
"""

ao_ribbonizer.py 
version 2.0
copyright (C) 2018 Orkhan Ashrafov
email: o.ashrafov@gmail.com

given a nurbs surface creates a ribbon.

---------------------------------------------------------------------------------------------------------------------------------------------

install instructions: place this file in the default "scripts" folder. go to maya and run these two lines from a python tab: 
 
import ao_ribbonizer
ao_ribbonizer.UI()

--------------------------------------------------------------------------------------------------------------------------------------------- 

EQUAL DIST - if checked, controls are distributed with equal distance from one another. if not, 
they are distributed proportionally according to the deformed surface (this was the case in the older version). 
no difference in results unless the surface is deformed after creation (i.e: cvs have been moved). 
in any case, the final bind joints are always distributed with equal distance. default is checked.

CONSTRAIN - control joints are constrained to the controls. if not checked, joints are controlled by direct connections. default is checked.

WIRE - deform the surface using wire deformer instead of skinCluster. skinCluster is used if there's only 1 control

ADD FK - add fk controls over the ik ones to the rig. skipped if the surface is periodic


"""
from itertools import izip
import maya.OpenMaya as om
import maya.cmds as mc


def get_bbox_center(obj):

    shapes = mc.listRelatives(obj, s=True) # get bb of the shape in case there are children
    cvs=[]
    for shape in shapes:
        num_of_cvs = mc.getAttr(shape + ".controlPoints", size=True)
        cvs.append("{}.cv[0:{}]".format(shape, num_of_cvs-1))
    
    bbmin = mc.exactWorldBoundingBox(cvs)[:3]
    bbmax = mc.exactWorldBoundingBox(cvs)[3:7]

    mid_point = [(b_max + b_min)/2 for b_min, b_max in izip(bbmin, bbmax)]

    return mid_point

def make_fk_ctrls(prefix, num_of_ctrls):

    fk_ctrls = []
    fk_ctrl_off_grps = []

    fk_ctrls = ctrl_maker(prefix, ctrl_type="circle", count = num_of_ctrls - 1, deg=3, sp=8, name="fk")
    fk_ctrl_off_grps = [mc.group(fk_ctrl, n=fk_ctrl + "_offset") for fk_ctrl in fk_ctrls]
    [mc.xform(fk_ctrl_off_grp, piv=(0,0,0), os=True) for fk_ctrl_off_grp in fk_ctrl_off_grps]

    for (o, f) in izip(fk_ctrl_off_grps[1:], fk_ctrls[:-1]):
        mc.parent(o, f)

    return fk_ctrls, fk_ctrl_off_grps

########################################################################################## 

def ctrl_maker(prefix, ctrl_type, count, deg, sp, name=""):

    if ctrl_type == "cube":

        c1 = mc.curve(p=[(-1.0, 1.0, 1.0), (-1.0, 1.0, -1.0), (1.0, 1.0, -1.0), 
                         (1.0, 1.0, 1.0), (-1.0, 1.0, 1.0), (-1.0, -1.0, 1.0), 
                         (1.0, -1.0, 1.0), (1.0, -1.0, -1.0), (-1.0, -1.0, -1.0), 
                         (-1.0, -1.0, 1.0), (-1.0, -1.0, -1.0), (-1.0, 1.0, -1.0), 
                         (1.0, 1.0, -1.0), (1.0, -1.0, -1.0), (1.0, -1.0, 1.0), (1.0, 1.0, 1.0)], 
                         k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], d=1)

    elif ctrl_type == "sphere":

        c1 = mc.circle(d=deg, s=sp, nr=(1, 0, 0), r=1, ch=0)[0]
        c2 = mc.circle(d=deg, s=sp, nr=(0, 1, 0), r=1, ch=0)[0]
        c3 = mc.circle(d=deg, s=sp, nr=(0, 0, 1), r=1, ch=0)[0]

        mc.parent(mc.listRelatives(c2, s=True), mc.listRelatives(c3, s=True), c1, r=True, s=True)
        mc.delete(c2, c3)

    elif ctrl_type == "circle":

        c1 = mc.circle(d=deg, s=sp, nr=(1, 0, 0), r=1, ch=0)[0]

    if name != "":
        name = name + "_"

    ctrls = [c1]
    for x in range(count-1):
        ctrls.append(mc.duplicate(c1))

    for x, ctrl in enumerate(ctrls):
        ctrls[x] = mc.rename(ctrl, "{}{}ctrl_{:02d}".format(prefix, name, x+1))
        shapes = mc.listRelatives(ctrls[x], f = True, s=True)
        for y, shape in enumerate(shapes):
            mc.rename(shape, "{}Shape{:02d}".format(ctrls[x], y+1))

    mc.select(cl=True)

    return ctrls

#######################################################################

def lock_hide(objs, attrs):
    for obj in objs:
        for attr in attrs:
            mc.setAttr(obj + attr, l=True, k=False, cb=False)

#####################################################################

def param_from_length(curve, count, curve_type = "open", space = "uv", normalized=True):

    if curve_type == "periodic":
        divider = count
    else:
        divider = count - 1

    if divider==0:
        divider = 1
       
    dag = om.MDagPath()
    obj = om.MObject()
    crv = om.MSelectionList()
    crv.add(curve)
    crv.getDagPath(0, dag, obj)

    curve_fn = om.MFnNurbsCurve(dag)
    length = curve_fn.length()

    param = [curve_fn.findParamFromLength(i * ((1 / float(divider)) * length)) for i in range(count)]

    if space == "world":
        data=[]
        space = om.MSpace.kWorld
        point = om.MPoint()
        for p in param:
            curve_fn.getPointAtParam(p, point, space)
            data.append([point[0], point[1], point[2]]) #world space points
    elif normalized == True:

        def normalizer(value, old_range, new_range): 
            return (value - old_range[0]) * (new_range[1] - new_range[0]) / (old_range[1] - old_range[0]) + new_range[0]
        
        max_v = mc.getAttr(curve + ".minMaxValue.maxValue")
        min_v = mc.getAttr(curve + ".minMaxValue.minValue")

        #normalized parameters (before i was just dividing p to max_v. but with weird ranges (ie. 1.4281 to 6.98214) the result is of is not as expected. this also could have been fixed by just rebuilding the surface uniformly)
        data = [normalizer(p, [min_v, max_v], [0, 1]) for p in param] 
    else:
        data = param

    return data

#####################################################################

def set_color(objects, color):

    color_dict = {"blue" : 6, "red" : 13, "green" : 14, "mid_blue" : 15, "yellow" : 22, "light_green" : 23}

    if isinstance(objects, list):
        for obj in objects:
            if mc.listRelatives(obj, f=True, s=True) != None:
                shapes = mc.listRelatives(obj, f=True, s=True)
                for shape in shapes:       
                    mc.setAttr(shape + ".ove", 1)
                    mc.setAttr(shape + ".ovc", color_dict[color])
            else:
                mc.setAttr(obj + ".ove", 1)
                mc.setAttr(obj + ".ovc", color_dict[color])
    else:
        if mc.listRelatives(objects, f=True, s=True) != None:
            shapes = mc.listRelatives(objects, f=True, s=True)
            for shape in shapes:       
                mc.setAttr(shape + ".ove", 1)
                mc.setAttr(shape + ".ovc", color_dict[color])
        else:
            mc.setAttr(objects + ".ove", 1)
            mc.setAttr(objects + ".ovc", color_dict[color])


def get_selection():

    #check if nurbsSurface is selected
    sel = mc.ls(sl=True)
    
    if not sel:
        mc.warning("select a nurbs surface to ribbonize")
        return

    shapes = mc.listRelatives(sel[0], s=True, f=True)

    if shapes and mc.objectType(shapes[0]) == "nurbsSurface":
        surf_tr = sel[0]
    # after changing attributes on "makeNurbPlane" node it stays selected. 
    # so instead of raising an error we just get the connected surface
    elif mc.objectType(sel[0]) == "makeNurbPlane" or mc.objectType(sel[0]) == "makeNurbCylinder":              
        surf_tr = mc.listConnections(sel[0] + ".outputSurface", d=True, s=False)[0]
    else:
        mc.warning("dude, that isn't a nurbs surface")
        return

    return surf_tr
    

def ribbonize(surf_tr, equal=1, num_of_ctrls=5, num_of_jnts=29, prefix="", constrain=1, add_fk=0, wire=0):

    attrs = [".tx", ".ty", ".tz", ".rx", ".ry", ".rz", ".sx", ".sy", ".sz", ".v"]
    
    if  prefix == "":
        mc.warning("care to name it?")
        return

    else:   
        prefix = prefix + "_"

    #####################################################
        
    surf_tr = mc.rename(surf_tr, prefix + "ribbon_surface")
    surf = mc.listRelatives(surf_tr, shapes=True)[0]

    # freeze transformations and delete the surface history
    mc.makeIdentity(surf_tr, t=True, r=True, s=True, apply=True)
    mc.delete(surf_tr, ch=True)

    # duplicate surface curves to determine the direction
    u_curve = mc.duplicateCurve(surf_tr + ".v[.5]", local=True, ch=0)
    v_curve = mc.duplicateCurve(surf_tr + ".u[.5]", local=True, ch=0)

    # delete the history just in case
    mc.delete(surf_tr, ch=True)
    
    u_length = mc.arclen(u_curve)
    v_length = mc.arclen(v_curve)

    if u_length < v_length:
        mc.reverseSurface(surf_tr, d=3, ch=False, rpo=True)
        mc.reverseSurface(surf_tr, d=0, ch=False, rpo=True)

    parameter = ".parameterU"
    other_param = ".parameterV"

    # correct u_curve after reversing to calculate the length
    u_curve_corr = mc.duplicateCurve(surf_tr + ".v[.5]", local=True, ch=0)[0]

    #############################################################################

    # selected surface is periodic or open? (cylinder or a plane)
    if mc.getAttr(surf + ".formU") == 2 or mc.getAttr(surf + ".formV") == 2:
        curve_type = "periodic"
        divider_for_ctrls = num_of_ctrls
    elif mc.getAttr(surf + ".formU") == 0 or mc.getAttr(surf + ".formV") == 0:
        curve_type = "open"
        divider_for_ctrls = num_of_ctrls - 1

    #############################################################################
    param_ctrls = param_from_length(u_curve_corr, num_of_ctrls, curve_type, "uv")
    param_joints = param_from_length(u_curve_corr, num_of_jnts, curve_type, "uv")

    length = mc.arclen(u_curve_corr)
    mc.delete(u_curve, v_curve, u_curve_corr)

    ############################################################################

    # create groups, main control and main control offset
    final_group = mc.group(n=prefix + "ribbon_grp", em=True)
    ctrl_joints_grp = mc.group(n=prefix + "ctrl_joints_grp", em=True)
    ctrl_grp = mc.group(n=prefix + "ctrls_grp", em=True)
    follicles_grp = mc.group(n=prefix + "follicles_grp", em=True)
    rig_grp = mc.group(n=prefix + "rig_grp", em=True)
    main_ctrl = mc.circle(n=prefix + "ctrl_main", nr=(0, 1, 0), r=length / 5, ch=0)[0]
    main_ctrl_offset = mc.group(n=prefix + "ctrl_main_offset", em=True)
    
    mc.parent(main_ctrl, main_ctrl_offset)
    mc.parent(ctrl_grp, main_ctrl)
    mc.parent(main_ctrl_offset, rig_grp, final_group)
    mc.parent(surf_tr, ctrl_joints_grp, follicles_grp, rig_grp)

    # move main_ctrl_offset to the center of the surfaces bbox (in case its pivot is somewhere else)
    mid_point = get_bbox_center(surf_tr)
    for attr, mid_pnt_el in izip(attrs[:3], mid_point):
        mc.setAttr(main_ctrl_offset + attr, mid_pnt_el)

    ############################################################################

    fols = []
    fols_tr = []
    bind_jnts = []
    bnd_joints_rad = (length / 60) / (float(num_of_jnts)/40)

    for x in range(num_of_jnts):

        fol = mc.createNode("follicle")
        mc.setAttr(fol + ".visibility", 0)
        temp_fol = mc.listRelatives(fol, p=True)[0]
        fols_tr.append(mc.rename(temp_fol, "{}follicle_{:02d}".format(prefix, x+1)))
        fols.append(mc.listRelatives(fols_tr[-1], s=True)[0])

        # connect follicle shapes to their transforms   
        mc.connectAttr(fols[-1] + ".outTranslate", fols_tr[-1] + ".translate", f=True)
        mc.connectAttr(fols[-1] + ".outRotate", fols_tr[-1] + ".rotate", f=True)

        # attach follicle shapes to the surface
        mc.connectAttr(surf + ".worldMatrix[0]", fols[-1] + ".inputWorldMatrix")
        mc.connectAttr(surf + ".local", fols[-1] + ".inputSurface")

        mc.setAttr(fols[-1] + parameter, param_joints[x])
        mc.setAttr(fols[-1] + other_param, 0.5)

        mc.parent(fols_tr[-1], follicles_grp)

        # create final bind joints on the surface
        bind_jnts.append(mc.createNode("joint", n="{}bnd_jnt_{:02d}".format(prefix, x+1)))

        mc.parent(bind_jnts[-1], fols_tr[-1], r=True)
        mc.setAttr(bind_jnts[-1] + ".radius", bnd_joints_rad)


    set_color(bind_jnts, "mid_blue")

    #create temp follicles for control offset groups to align
    temp_fols = []
    temp_fols_tr = []
    
    for x in range(num_of_ctrls):

        temp_fols.append(mc.createNode("follicle"))
        temp_fols_tr.append(mc.listRelatives(temp_fols[-1], p=True)[0])

        mc.connectAttr(temp_fols[-1] + ".outTranslate", temp_fols_tr[-1] + ".translate", f=True)
        mc.connectAttr(temp_fols[-1] + ".outRotate", temp_fols_tr[-1] + ".rotate", f=True)

        mc.connectAttr(surf + ".worldMatrix[0]", temp_fols[-1] + ".inputWorldMatrix") 
        mc.connectAttr(surf + ".local", temp_fols[-1] + ".inputSurface")

    ####################################################

    if equal == 1:
        for x, temp_fol in enumerate(temp_fols):
            mc.setAttr(temp_fol + parameter, param_ctrls[x])
            mc.setAttr(temp_fol + other_param, 0.5)
    if equal == 0:
        v = 0
        for temp_fol in temp_fols:
            mc.setAttr(temp_fol + parameter, v)
            mc.setAttr(temp_fol + other_param, 0.5)
            v = v + (1.0 / divider_for_ctrls)
            
    ####################################################

    #create controls and control joints
    controls = ctrl_maker(prefix, ctrl_type="cube", count=num_of_ctrls, deg=3, sp=8)

    ctrl_ofs_grps = []
    ctrl_joints = []
    ctrl_jnt_ofs_grps = []
    ctrl_joints_rad = bnd_joints_rad * 2
    ik_ctrl_scale = (length / 35) / (float(num_of_ctrls)/5)

    for x, ctrl in enumerate(controls):

        ctrl_ofs_grp = mc.group(ctrl, n= "{}_offset".format(ctrl))
        mc.delete(mc.parentConstraint(temp_fols_tr[x], ctrl_ofs_grp))
        ctrl_ofs_grps.append(ctrl_ofs_grp)

        #scale ik controls
        ctrl_shapes = mc.listRelatives(ctrl, s=True)
        for ctrl_shape in ctrl_shapes:
            ctrl_cvs_count = mc.getAttr(ctrl_shape + ".controlPoints", size=True)
            mc.scale(ik_ctrl_scale, ik_ctrl_scale, ik_ctrl_scale, "{}.cv[0:{}]".format(ctrl_shape, ctrl_cvs_count-1), r=True, ocp=True)

        #create the control joints
        ctrl_joints.append(mc.createNode("joint", n="{}ctrl_jnt_{:02d}".format(prefix, x+1)))
        #set the radius of controls joints to 2 times that of the surface joints
        mc.setAttr(ctrl_joints[x] + ".radius", ctrl_joints_rad)
        #create offset groups for ctrl joints
        ctrl_jnt_ofs_grp = mc.group(ctrl_joints[-1], n="{}_offset".format(ctrl_joints[-1]))
        mc.delete(mc.parentConstraint(temp_fols_tr[x], ctrl_jnt_ofs_grp))
        ctrl_jnt_ofs_grps.append(ctrl_jnt_ofs_grp)
        

    ###
    set_color(controls, "green")
    set_color(ctrl_joints, "red")

    mc.parent(ctrl_ofs_grps, ctrl_grp)
    mc.parent(ctrl_jnt_ofs_grps, ctrl_joints_grp)

    lock_hide(ctrl_ofs_grps, attrs[:9])
    lock_hide(ctrl_jnt_ofs_grps, attrs[:9])

    mc.delete(temp_fols_tr)

    ####################################################

    #determine if constraint or connection method is chosen
    if constrain == 0:
        for (c, j) in izip(controls, ctrl_joints):
            for attr in attrs[:7]: #skip scale attributes
                mc.connectAttr(c + attr, j + attr)

        mc.parentConstraint(main_ctrl, ctrl_joints_grp, mo=True)            
        mc.scaleConstraint(main_ctrl, ctrl_joints_grp)

        #scale the follicles with the main control
        for flt in fols_tr:
            mc.connectAttr(main_ctrl + ".sx", flt + ".sx")
            mc.connectAttr(main_ctrl + ".sx", flt + ".sy")
            mc.connectAttr(main_ctrl + ".sx", flt + ".sz")

    elif constrain == 1:
        for (c, j) in izip(controls, ctrl_joints):
            mc.parentConstraint(c, j)
            mc.scaleConstraint(c, j)

        #scale the follicles with the main control
        for flt in fols_tr: 
            mc.scaleConstraint(main_ctrl, flt)

    #######################################################################       

    if wire == True and num_of_ctrls > 1:

        temp_crv = mc.duplicateCurve(surf_tr + ".v[.5]", n = prefix + "wire_crv", local=False, ch=0)[0]

        if num_of_ctrls == 2:
            degree=1
        else:
            degree=3

        wire_crv = mc.curve(p=param_from_length(temp_crv, num_of_ctrls + (num_of_ctrls - 1), "open", "world"), d=degree)

        mc.delete(temp_crv)

        wire_crv = mc.rename(wire_crv, prefix + "wire_crv") # if name at the creation time, the shape doesn't get renamed
        mc.delete(wire_crv, ch=True)
        wire = mc.wire(surf_tr, gw=False, en=1.0, ce=0.0, li=0.0, dds=(0, 50), w = wire_crv, n = prefix + "wire")[0]
        mc.connectAttr(main_ctrl + ".sx", wire + ".scale[0]")

        cps = param_from_length(wire_crv, num_of_ctrls, "open", "uv", normalized = False)
        
        for cp in cps:
            mc.select("{}.u[{}]".format(wire_crv, cp), r=True)
            mc.dropoffLocator(1.0, 1.0, wire)

        mc.select(cl=True)

        for x, ctrl in enumerate(controls):
            mc.connectAttr(ctrl + ".rx", "{}.wireLocatorTwist[{}]".format(wire, x))

        wire_grp = mc.group(wire_crv, wire_crv + "BaseWire", n=prefix + "wire_crv_grp")
        mc.parent(wire_grp, rig_grp)
        lock_hide([wire_grp], attrs[:9])

        wire_skin_cluster = mc.skinCluster(ctrl_joints, wire_crv, dr=2, mi=2, bm=0)[0]

    else:
        #bind the surface to the joints
        nurbs_skin_cluster = mc.skinCluster(ctrl_joints, surf_tr, dr=2, mi=num_of_ctrls-1, ns=num_of_ctrls*5, bm=0, n = prefix + "skinCluster")[0]
        mc.skinPercent(nurbs_skin_cluster, surf_tr, pruneWeights=0.2)

    if wire == True and num_of_ctrls == 1:
        mc.warning("wire skipped. at least 2 controls needed")

    ##########################################################################################

    mc.setAttr(surf_tr + ".v", 0)
    mc.setAttr(rig_grp + ".v", 0)

    mc.connectAttr(main_ctrl + ".sx", main_ctrl + ".sy")
    mc.connectAttr(main_ctrl + ".sx", main_ctrl + ".sz")
    mc.aliasAttr("Scale", main_ctrl + ".sx")

    set_color(main_ctrl, "yellow")
    
    mc.connectAttr(main_ctrl_offset + ".sx", main_ctrl_offset + ".sy")
    mc.connectAttr(main_ctrl_offset + ".sx", main_ctrl_offset + ".sz")
    mc.aliasAttr("Scale", main_ctrl_offset + ".sx")

    #lock and hide attributes
    lock_hide([final_group, follicles_grp, ctrl_joints_grp, surf_tr, ctrl_grp, rig_grp], attrs[:9])
    lock_hide([ctrl_grp, main_ctrl, main_ctrl_offset], attrs[7:])
    lock_hide(controls, attrs[7:])

    #clear selection
    mc.select(cl=True) #if selection isn't cleared a control joint gets added to the bind joints set

    #create a set with bind joints
    bind_jnts_set = mc.sets(n=prefix + "bind_jnts_set")
    mc.sets(bind_jnts, add=bind_jnts_set)

    mc.select(cl=True)

    ik_ctrls_set = mc.sets(n=prefix + "ik_ctrls_set")
    mc.sets(controls, add=ik_ctrls_set)

    mc.select(cl=True)

    controls_set = mc.sets(n=prefix + "controls_set")
    mc.sets(main_ctrl, ik_ctrls_set, add=controls_set)

    ##########################################################################################

    if add_fk == 1 and mc.getAttr(surf + ".formU") != 2 and mc.getAttr(surf + ".formV") != 2:

        fk_ctrls, fk_ctrl_off_grps = make_fk_ctrls(prefix, num_of_ctrls)
        mc.parent(fk_ctrl_off_grps[0], ctrl_grp)

        #scale fk controls
        fk_ctrl_scale = ik_ctrl_scale * 2

        for fk_ctrl in fk_ctrls:
            fk_ctrl_shapes = mc.listRelatives(fk_ctrl, s=True)
            for fk_ctrl_shape in fk_ctrl_shapes:
                fk_ctrl_cvs_count = mc.getAttr(fk_ctrl_shape + ".controlPoints", size=True)
                mc.scale(fk_ctrl_scale, fk_ctrl_scale, fk_ctrl_scale, "{}.cv[0:{}]".format(fk_ctrl_shape, fk_ctrl_cvs_count-1), r=True, ocp=True)
        
        #add fk controls to a set
        mc.select(cl=True)
        fk_ctrls_set = mc.sets(n=prefix + "fk_ctrls_set") 
        mc.sets(fk_ctrls, add=fk_ctrls_set)

        ########
        ik_ctrl_constr_grps = [mc.group(ctrl, n=ctrl + "_constr_grp") for ctrl in controls]
        [mc.xform(ik_ctrl_constr_grp, piv=(0,0,0), os=True) for ik_ctrl_constr_grp in ik_ctrl_constr_grps]

        for ik, fk in izip(controls[:-1], fk_ctrl_off_grps):
            mc.delete(mc.parentConstraint(ik, fk))

        for fk, ik in izip(fk_ctrls, ik_ctrl_constr_grps[:-1]):
            mc.parentConstraint(fk, ik)

        #constrain last ik ctrl
        mc.parentConstraint(fk_ctrls[-1], ik_ctrl_constr_grps[-1], mo=True)
        lock_hide(ik_ctrl_constr_grps, attrs[:9])

        ########
        set_color(fk_ctrls, "blue")
        lock_hide(fk_ctrl_off_grps, attrs[:9])

        mc.sets(fk_ctrls_set, add=controls_set)

        mc.select(cl=True)

    elif add_fk == 1 and (mc.getAttr(surf + ".formU") == 2 or mc.getAttr(surf + ".formV") == 2):

        mc.warning("surface is periodic. fk controls skipped")

    ################ADD MESSAGE ATTRS################

    mc.addAttr(main_ctrl, ln = "joints", at = "message")
    mc.addAttr(main_ctrl, ln = "follicles", at = "message")
    mc.addAttr(main_ctrl, ln = "surface", at = "message")

    if mc.attributeQuery("i_am_the_surface", node=surf, exists=True) == False:
        mc.addAttr(surf, ln = "i_am_the_surface", at = "message")

    mc.connectAttr(main_ctrl + ".surface", surf + ".i_am_the_surface")

    for j, f in izip(bind_jnts, fols):
        mc.addAttr(j, ln = "i_am_a_joint", at = "message")
        mc.addAttr(f, ln = "i_am_a_follicle", at = "message")
        mc.connectAttr(main_ctrl + ".joints", j + ".i_am_a_joint")
        mc.connectAttr(main_ctrl + ".follicles", f + ".i_am_a_follicle")

    ##########################################################################################

class UI(object):
    
    def __init__(self):
        
        windowName = "ribbonizer_window"
        windowWidth = 400
        windowHeight = 160
        
        if mc.window(windowName, ex=True):
            mc.deleteUI(windowName)
            mc.windowPref(windowName, remove=True)

        mainWindow = mc.window(windowName, t="Ribbonizer 2.0", s=False, mnb=False, mxb=False)
        mc.window(windowName, e=True, wh=(windowWidth, windowHeight))
        mainFormL = mc.formLayout()
        
        prefixText = mc.text(l="prefix:")
        self.prefixField = mc.textField("prefix", pht="name me")
        numCtrlsText = mc.text(l="num_of_ctrls:")
        self.numCtrlsField = mc.intField("num_of_ctrls", min=1, v=5, step=1)
        numJntsText = mc.text(l="num_of_jnts:")
        self.numJntsField = mc.intField("num_of_jnts", min=1, v=29, step=1)

        self.equalCheckbox = mc.checkBox("equal", l="equal_dist", v=True)
        self.constrCheckbox = mc.checkBox("constrain", l="constrain", v=True)
        self.wireCheckbox = mc.checkBox("wire", l="wire", v=False)
        self.fkCheckbox = mc.checkBox("add_fk", l="add_fk", v=False)
        
        self.ribbonizeBtn = mc.button(l="Ribbonize", c = self.launch)

        mc.formLayout(mainFormL, e=True, attachForm = [(prefixText, "left", 20), (numCtrlsText, "left", 20), (numJntsText, "left", 20),
                                                        (prefixText, "top", 19),
                                                        (self.prefixField, "top", 15),
                                                        (self.equalCheckbox, "left", 20), (self.wireCheckbox, "left", 20),
                                                        (self.constrCheckbox, "left", 110), (self.fkCheckbox, "left", 110),
                                                        (self.prefixField, "left", 110), (self.numCtrlsField, "left", 110), (self.numJntsField, "left", 110),
                                                        (self.ribbonizeBtn, "left", 200), (self.ribbonizeBtn, "right", 15), (self.ribbonizeBtn, "top", 15), (self.ribbonizeBtn, "bottom", 15),
                                                            ],
                                                            
                                          attachControl = [(numCtrlsText, "top", 11, prefixText), (numJntsText, "top", 11, numCtrlsText),
                                                          (self.numCtrlsField, "top", 5, self.prefixField), (self.numJntsField, "top", 5, self.numCtrlsField),
                                                          (self.equalCheckbox, "top", 20, self.numJntsField), (self.wireCheckbox, "top", 5, self.equalCheckbox),
                                                          (self.constrCheckbox, "top", 20, self.numJntsField), (self.fkCheckbox, "top", 5, self.constrCheckbox),
                                                          (self.prefixField, "right", 15, self.ribbonizeBtn), (self.numCtrlsField, "right", 15, self.ribbonizeBtn), (self.numJntsField, "right", 15, self.ribbonizeBtn),
                                                              
                                              ])
        mc.showWindow(mainWindow)

    def launch(self, *args):

        sel = get_selection()

        if not sel:
            return

        surf_tr = sel

        equal = mc.checkBox(self.equalCheckbox, q=True, v=True)
        num_of_ctrls = mc.intField(self.numCtrlsField, q=True, v=True)
        num_of_jnts = mc.intField(self.numJntsField, q=True, v=True)
        prefix = mc.textField(self.prefixField, q=True, tx=True)
        constrain = mc.checkBox(self.constrCheckbox, q=True, v=True)
        add_fk = mc.checkBox(self.fkCheckbox, q=True, v=True)
        wire = mc.checkBox(self.wireCheckbox, q=True, v=True)

        ribbonize(surf_tr, equal, num_of_ctrls, num_of_jnts, prefix, constrain, add_fk, wire)