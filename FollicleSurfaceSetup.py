#################################################################
######################     The Surface     ########################
 #################################################################
#Author:Siddarth Mehra
#Email:siddarthmehraajm@gmail.com
#Mobile: +91-7728050400(Whatsapp)


#This script created a bendy surface for attaching in rigs


#Run this command proxyCube() after runin the script for a tempobject for basic skin for copying

import maya.cmds as cmds
import maya.mel as mel
import pymel.core as pm



#CreateSurface()




def CreateSurface():
    
    #doHideInOutliner 1;
    
    ####################################################################
                                #Group#CDef
    ####################################################################
    
    
    def GrpWPiv(s):
            
        cmds.select(cl=True)
        
        offset = cmds.group(n=str(s + '_Offset_Group'),em = True)
        tmp= cmds.group(em=True)
        cmds.delete(cmds.parentConstraint(s,tmp))
        pos = cmds.xform(tmp, q=True, t=True, ws=True)
        rot = cmds.xform(tmp, q=True, rotation=True, ws=True)
        cmds.xform(offset, translation=pos, ws=True)
        cmds.xform(offset, rotation=rot, ws=True)
        cmds.makeIdentity(offset, apply=True, t=1, r=1, s=1 )
        cmds.parent(s,offset)
        cmds.delete(tmp)
        return offset
        
    
    ####################################################################
                                #Extra#Def
    ####################################################################
    
    
    def SLc():
            
        cmds.select(cl=True)
        
        
        
    ####################################################################
    
    def SL(obj):
            
        cmds.select(obj)
        return obj
    
    def SLT(obj,Sobj):
            
        cmds.select(obj,Sobj)
        return obj,Sobj
        
    
    ####################################################################
    
    def Rnm(obj,txt=str):
            
        renamedObj = cmds.rename(obj,txt)
        return renamedObj
    
    ####################################################################
    
    def LnH(obj):
           
        cmds.setAttr( obj + '.t', lock=True )
        cmds.setAttr( obj + '.r', lock=True )
        cmds.setAttr( obj + '.s', lock=True )
        
        cmds.setAttr( obj + '.v', lock=True )   
       
        cmds.setAttr( obj + '.tx', k=False,channelBox = 0 )
        cmds.setAttr( obj + '.ty', k=False,channelBox = 0 )
        cmds.setAttr( obj + '.tz', k=False,channelBox = 0 )
        
        cmds.setAttr( obj + '.rx', k=False,channelBox = 0 )
        cmds.setAttr( obj + '.ry', k=False,channelBox = 0 )
        cmds.setAttr( obj + '.rz', k=False,channelBox = 0 )
        
        cmds.setAttr( obj + '.sx', k=False,channelBox = 0 )
        cmds.setAttr( obj + '.sy', k=False,channelBox = 0 )
        cmds.setAttr( obj + '.sz', k=False,channelBox = 0 )    
        
        
    
    
    
    ####################################################################
                                #Name &Main Def
    ####################################################################
    
    
    
    
    #def ProSurface():
        
    TFoll = cmds.nurbsPlane(n = 'tmpPlane',p = (0,0,0),ax = (0,1,0),w = 1,lr = 6,d=3,u=1,v=5,ch=0)
    
    Folsize = range(5)
    
    tmpsize = .1
    
    folllst = []
    
    grplist= [] 
    follCtrl_Lst=[]
    follJntLst=[]
    ####################################################################
                                #Create Follicles
    ####################################################################
    for i in Folsize:
        
        fol = pm.createNode('transform', n=(Gloablname+'_Follicle_0'+str(i+1)), ss=True)
        folShape = pm.createNode('follicle', n=fol.name()+'Shape', p=fol, ss=True)
        geo = pm.PyNode('tmpPlane')
        geo.local >> folShape.inputSurface
        geo.worldMatrix[0] >> folShape.inputWorldMatrix
        folShape.outRotate >> fol.rotate
        folShape.outTranslate >> fol.translate
        fol.inheritsTransform.set(False)
        folShape.parameterU.set(0.5)
        
        folShape.parameterV.set(tmpsize)
        ##
        tmpsize +=.2
        ##
        
        ##
        SLc()
        ##
        pm.select(fol)
        folllst.append(cmds.ls(sl=True))
        
    ####################################################################
                                #Follicle joints & ctrls
    ####################################################################
    
    for i in folllst:
    
        innerCtrl = cmds.circle(r = .2,n=(i[0]+'_Jnt_Ctrl'))
        
        jnt = cmds.createNode('joint',n=(i[0]+'_Joint'))
        #cmds.setAttr((jnt+'.jointOrientY'),90)
        cmds.setAttr((jnt+'.radius'),.1)
        SLc()
        cmds.parent(jnt,innerCtrl)
        #cmds.parent(innerCtrl,i[0])
        #cmds.setAttr((innerCtrl[0]+'.translateY'),0)
        try:
            cmds.setAttr((innerCtrl[0]+'Shape'+'.overrideEnabled'),1)
            cmds.setAttr((innerCtrl[0]+'Shape'+'.overrideColor'),17)
        except:
            pass
            
        ctrlGrp = cmds.group(innerCtrl[0],n=(innerCtrl[0]+'_Group'))
        pos = cmds.xform(i, q=True, t=True, ws=True)
        cmds.setAttr((ctrlGrp+'.translateZ'),pos[2])
        cmds.setAttr((ctrlGrp+'.rotateY'),90)
        follCtrl_Lst.append(ctrlGrp)
        grpfol = cmds.group(i,n=(i[0]+'_Group'))
        grplist.append(grpfol)
        cmds.parentConstraint(i[0],ctrlGrp,mo=True)
        cmds.scaleConstraint(i[0],ctrlGrp,mo=True)
        follJntLst.append(jnt)
        
    
    
        
        
    ####################################################################
                                #BS_Def Plane
    ####################################################################
    SLc()
    
    
    FollicleCtrlGroup = cmds.group(follCtrl_Lst,n=(Gloablname+'_Follicle_Ctrl_Group'))
    FollicleGroup = cmds.group(grplist,n=(Gloablname+'_Follicle_Group'))
    
    BSgeo = cmds.nurbsPlane(n = 'tmpBSPlane',p = (0,0,0),ax = (0,1,0),w = 1,lr = 6,d=3,u=1,v=5,ch=0)
    cmds.move(-3,0,0)
    
    cmds.blendShape(BSgeo,TFoll,automatic=True,n=(Gloablname+'Follicle_Deform_BS'),w=[(0),(1)])
    
    
    ####################################################################
                                #Wire Deformer
    ####################################################################
    try:
        wireDfrmrCurve = mel.eval('curve -d 2 -p -3 0 3 -p -3 0 0 -p -3 0 -3 -k 0 -k 0 -k 1 -k 1')
    
        wireDfrmrCurveNN = Rnm(wireDfrmrCurve,(Gloablname+'_WireDeformerCurve'))
        SLc()
        
        pm.select(BSgeo[0])
        wiredfrmr = cmds.wire(gw = False,en = 1,ce=0,li=0,dds=(1,10.0),w = (BSgeo[0],wireDfrmrCurveNN))
        print 'Ignore the Error!'
    except:
        print 'oh'
        
        
    
                            #Create Clusters
    ####################################################################
    
    cmds.select((wireDfrmrCurveNN+'.cv[0]'),(wireDfrmrCurveNN+'.cv[1]'))
    Lcl01 = cmds.cluster(n=(Gloablname+'_CL_01'))
    cmds.xform(Lcl01,ws=True,piv=(-3,0,3))
    try:
        cmds.setAttr(Lcl01[1]+'Shape.originX',-3)
        cmds.setAttr(Lcl01[1]+'Shape.originY',0)
        cmds.setAttr(Lcl01[1]+'Shape.originZ',3)
        
    except:
        pass
    
    
    cl01 = cmds.spaceLocator(n=(Gloablname+'Wire_L_01'))
    cl01Grp = GrpWPiv(str(cl01[0]))
    cmds.setAttr(cl01Grp+'.rotateY',90)
    cmds.delete(cmds.pointConstraint(Lcl01,cl01Grp))
    cmds.parentConstraint(cl01,Lcl01[1],mo = True)
    
    SLc()
    ####################################################################
    
    cmds.select((wireDfrmrCurveNN+'.cv[2]'),(wireDfrmrCurveNN+'.cv[1]'))
    Lcl02 = cmds.cluster(n=(Gloablname+'_CL_02'))
    cmds.xform(Lcl02,ws=True,piv=(-3,0,-3))
    try:
        cmds.setAttr(Lcl02[1]+'Shape.originX',-3)
        cmds.setAttr(Lcl02[1]+'Shape.originY',0)
        cmds.setAttr(Lcl02[1]+'Shape.originZ',-3)
        
    except:
        pass
    cl02 = cmds.spaceLocator(n=(Gloablname+'Wire_L_02'))
    cl02Grp = GrpWPiv(str(cl02[0]))
    cmds.setAttr(cl02Grp+'.rotateY',90)
    cmds.delete(cmds.pointConstraint(Lcl02,cl02Grp))
    cmds.parentConstraint(cl02,Lcl02[1],mo = True)
    
    SLc()
    ####################################################################
    
    cmds.select((wireDfrmrCurveNN+'.cv[1]'))
    LclM = cmds.cluster(n=(Gloablname+'_CL_Mid'))
    cmds.xform(LclM,ws=True,piv=(-3,0,0))
    try:
        cmds.setAttr(LclM[1]+'Shape.originX',-3)
        cmds.setAttr(LclM[1]+'Shape.originY',0)
        cmds.setAttr(LclM[1]+'Shape.originZ',0)
        
    except:
        pass
    clM = cmds.spaceLocator(n=(Gloablname+'Wire_L_M'))
    clMGrp = GrpWPiv(str(clM[0]))
    cmds.setAttr(clMGrp+'.rotateY',90)
    cmds.delete(cmds.pointConstraint(LclM,clMGrp))
    cmds.parentConstraint(clM,LclM[1],mo = True)
    
    SLc()
    ####################################################################
    cmds.percent(Lcl02[0],(wireDfrmrCurveNN+'.cv[1]'),v=.5)
    cmds.percent(Lcl01[0],(wireDfrmrCurveNN+'.cv[1]'),v=.5)
    
    ####################################################################
                                #Cluster Sec Controls
    ####################################################################
    Actrl = mel.eval("sphere -esw 360 -r 0.3 -d 1 -ut 0 -tol 0.01 -s 4 -nsp 2 -ch 0;")
    ActrlNN =Rnm(Actrl,(Gloablname+'_A_Sec_Ctrl'))
    try:
        cmds.setAttr((ActrlNN+'Shape'+'.overrideEnabled'),1)
        cmds.setAttr((ActrlNN+'Shape'+'.overrideShading'),0)
        cmds.setAttr((ActrlNN+'Shape'+'.overrideColor'),4)
        cmds.setAttr((ActrlNN+'Shape'+'.overrideEnabled'),lock = True)
        cmds.setAttr((ActrlNN+'Shape'+'.overrideShading'),lock = True)
        cmds.setAttr((ActrlNN+'Shape'+'.overrideColor'),lock = True)
    except:
        pass
    
    
    cmds.move(0,0,3,ActrlNN)
    cmds.makeIdentity(ActrlNN, apply=True, t=1, r=1, s=1 )
    cmds.connectAttr( (ActrlNN+'.t'), (cl01[0]+'.t') )
    cmds.connectAttr( (ActrlNN+'.r'), (cl01[0]+'.r') )
    cmds.connectAttr( (ActrlNN+'.s'), (cl01[0]+'.s') )
    ####################################################################
    Midctrl = mel.eval("sphere -esw 360 -r 0.3 -d 1 -ut 0 -tol 0.01 -s 4 -nsp 2 -ch 0;")
    MidctrlNN =Rnm(Midctrl,(Gloablname+'_Mid_Sec_Ctrl'))
    try:
        cmds.setAttr((MidctrlNN+'Shape'+'.overrideEnabled'),1)
        cmds.setAttr((MidctrlNN+'Shape'+'.overrideShading'),0)
        cmds.setAttr((MidctrlNN+'Shape'+'.overrideColor'),4)
        cmds.setAttr((MidctrlNN+'Shape'+'.overrideEnabled'),lock = True)
        cmds.setAttr((MidctrlNN+'Shape'+'.overrideShading'),lock = True)
        cmds.setAttr((MidctrlNN+'Shape'+'.overrideColor'),lock = True)
    except:
        pass
    
    
    cmds.makeIdentity(MidctrlNN, apply=True, t=1, r=1, s=1 )
    cmds.connectAttr( (MidctrlNN+'.t'), (clM[0]+'.t') )
    cmds.connectAttr( (MidctrlNN+'.r'), (clM[0]+'.r') )
    cmds.connectAttr( (MidctrlNN+'.s'), (clM[0]+'.s') )
    ####################################################################
    Bctrl = mel.eval("sphere -esw 360 -r 0.3 -d 1 -ut 0 -tol 0.01 -s 4 -nsp 2 -ch 0;")
    BctrlNN =Rnm(Bctrl,(Gloablname+'_B_Sec_Ctrl'))
    try:
        cmds.setAttr((BctrlNN+'Shape'+'.overrideEnabled'),1)
        cmds.setAttr((BctrlNN+'Shape'+'.overrideShading'),0)
        cmds.setAttr((BctrlNN+'Shape'+'.overrideColor'),4)
        cmds.setAttr((BctrlNN+'Shape'+'.overrideEnabled'),lock = True)
        cmds.setAttr((BctrlNN+'Shape'+'.overrideShading'),lock = True)
        cmds.setAttr((BctrlNN+'Shape'+'.overrideColor'),lock = True)
    except:
        pass
    
    
    cmds.move(0,0,-3,BctrlNN)
    cmds.makeIdentity(BctrlNN, apply=True, t=1, r=1, s=1 )
    cmds.connectAttr( (BctrlNN+'.t'), (cl02[0]+'.t') )
    cmds.connectAttr( (BctrlNN+'.r'), (cl02[0]+'.r') )
    cmds.connectAttr( (BctrlNN+'.s'), (cl02[0]+'.s') )
    ####################################################################
    
    secCtrls = ActrlNN,MidctrlNN,BctrlNN
    secCtrlsgrpLst = []
    
    for i in secCtrls:
        a = GrpWPiv(i)
        secCtrlsgrpLst.append(a)
        cmds.setAttr(a+'.rotateY',90)
        
        
        pass
        
        
    
        
    cmds.pointConstraint(ActrlNN,secCtrlsgrpLst[1],w=.5,mo=True)
    cmds.pointConstraint(BctrlNN,secCtrlsgrpLst[1],w=.5,mo=True)
    SLc()
    SecCtrlsMainGrp = cmds.group(secCtrlsgrpLst,n = (Gloablname+'_Sec_Ctrl_Group'))
    LocatorsGrpList = cl01Grp,cl02Grp,clMGrp
    
    
    SLc()
    
      
    ####################################################################
                        #Organising & Renaming Everything
    ####################################################################
                                #MOVE
    MoveFollicleGeo = Rnm(TFoll,(Gloablname+'_Main_Geo'))
    globalMoveGrp = cmds.group(MoveFollicleGeo,SecCtrlsMainGrp,n=(Gloablname+'_Global_Move_Group'))
    SLc()
    ####################################################################
                                #Deform 
    BsDeformGeo = Rnm(BSgeo,(Gloablname+'_BS_Geo'))
    ClGroup = cmds.group(LocatorsGrpList,n=(Gloablname+'_Cl_Group'))
    cls =LclM[1],Lcl01[1],Lcl02[1] 
    cmds.parent(cls,ClGroup)
    WireGroup = cmds.group(wireDfrmrCurveNN,(wireDfrmrCurveNN+'BaseWire'),n=(Gloablname+'_Wire_Group'))    
    DeformGrp  = cmds.group(ClGroup,WireGroup,BsDeformGeo,n=(Gloablname+'_SurfaceDeform_Group'))    
    cmds.setAttr(DeformGrp+'.v',0)
    cmds.setAttr(FollicleGroup+'.v',0)
    
    ####################################################################
                                #Global
    
    
    MainNonDeformGroup=cmds.group(globalMoveGrp,DeformGrp,FollicleGroup,FollicleCtrlGroup,n=(Gloablname+'_Group'))    
    
    
    
    
    ####################################################################
                                #FollicleScale
    ####################################################################
    
    
    for i in folllst:
        #cmds.connectAttr((globalMoveGrp+'.s'), (i[0]+'.s'))
        cmds.scaleConstraint(globalMoveGrp,i[0],mo = True)
        
        
    ####################################################################
                                #Global_Ctrl
    #################################################################### 
    
    glCtrl = mel.eval("curve -d 1 -p -5 0 0 -p -3 0 -2 -p -3 0 -1 -p 3 0 -1 -p 3 0 -2 -p 5 0 0 -p 3 0 2 -p 3 0 1 -p -3 0 1 -p -3 0 2 -p -5 0 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 6 -k 7 -k 8 -k 9 -k 10 ;")
    cmds.select(str(glCtrl)+'.cv[0:10]',r=True)
    cmds.scale(.35,.35,.35)
    cmds.rotate(0,90,0)
    SLc()
    glCtrlNN = Rnm(glCtrl,(Gloablname+'_Placement'))
    glCtrlGrp=cmds.group(glCtrlNN,n = (Gloablname+'_Ctrl_Group'))
    cmds.setAttr(glCtrlGrp+'.rotateY',90)
    cmds.parent(glCtrlGrp,MainNonDeformGroup)
    cmds.parent(globalMoveGrp,glCtrlNN)
    cmds.reorder(glCtrlGrp,f = True)
    
    
    
    
    ####################################################################
                                #Twist Deformer & Attrs
    ####################################################################
    
    
    
    twistDeformer = cmds.nonLinear(BsDeformGeo, type='twist')
    SL(twistDeformer[1])
    cmds.rotate(90,0,0)
    SLc()
    cmds.connectAttr(BctrlNN+'.rotateX',twistDeformer[0]+'.startAngle')
    
    
    cmds.connectAttr(ActrlNN+'.rotateX',twistDeformer[0]+'.endAngle')
    
    cmds.reorderDeformers(str(wiredfrmr[0]),str(twistDeformer[0]),BsDeformGeo)
    
    Rnm(twistDeformer[0],(Gloablname+'_TwistDeformer_Attrs'))
    twstDfmNN = Rnm(twistDeformer[1],(Gloablname+'_TwistDeformer'))
    cmds.parent(twstDfmNN,DeformGrp)
    
    ####################################################################
                                #Squash&Stretch
    ####################################################################
    
    
    cmds.addAttr(str(glCtrlNN),ln = '_',nn = ' ',at = 'enum',en='Volume:',k=True)    
    
    SquetchAttr = cmds.addAttr(glCtrlNN,ln = 'Squetch',at = 'bool',k=True)
    cmds.setAttr(glCtrlNN+'.Squetch',1)
    
    CurveInfoSquetch = cmds.arclen(wiredfrmr[2],ch = 1)
    CurveInfoSquetch = Rnm(CurveInfoSquetch,(Gloablname+'_Squetch_CrvInfo'))
    
    
    SquetchMD = cmds.createNode('multiplyDivide',n=(Gloablname+'_Squetch_MD'))
    
    cmds.setAttr(SquetchMD+'.operation',2)
    
    cmds.connectAttr(CurveInfoSquetch+'.arcLength',SquetchMD+'.input1X')
    
    cmds.setAttr(SquetchMD+'.input2X',float(cmds.getAttr(CurveInfoSquetch+'.arcLength')))
    
    SquetchVolumeMD = cmds.createNode('multiplyDivide',n=(Gloablname+'_Squetch_Volume_MD'))
    
    cmds.setAttr(SquetchVolumeMD+'.operation',2)
    
    
    cmds.setAttr(SquetchVolumeMD+'.input1X',float(1.0))
    
    cmds.setAttr(SquetchVolumeMD+'.input2X',float(cmds.getAttr(CurveInfoSquetch+'.arcLength')))
    
    cmds.connectAttr(SquetchMD+'.outputX',SquetchVolumeMD+'.input2X')
    
    SquetchCondition = cmds.createNode('condition',n=(Gloablname+'_SquetchCondition'))
    
    cmds.setAttr(SquetchCondition + '.secondTerm',float(1.0))
    
    cmds.connectAttr(SquetchVolumeMD+'.outputX',SquetchCondition+'.colorIfTrueR')
    
    cmds.connectAttr(glCtrlNN+'.Squetch',SquetchCondition+'.firstTerm')
    for i in follJntLst:
        
        cmds.connectAttr(SquetchCondition+'.outColorR',str(i+'.scaleX'))
        cmds.connectAttr(SquetchCondition+'.outColorR',str(i+'.scaleY'))
        
    SLc()
    
    ############################################################
                                #skn
    ####################################################################
    def proxyCube():   
        tmpsknCube = cmds.polyCube(w=.3,h=.3,d=6,sd=40,n=(Gloablname+'_tmp_SknCube'),ch=0)
        
        cmds.makeIdentity(tmpsknCube, apply=True, t=1, r=1, s=1 )
        #SL(follJntLst)
        skncls  = cmds.skinCluster(follJntLst,tmpsknCube,dr=10)
        #vtxCount = cmds.polyEvaluate(tmpsknCube,v=True)
        
        
        #for i in range(vtxCount):
           # a = cmds.skinPercent('skinCluster1','Hi_tmpSknCube'+'.vtx['+str(i)+']',q=1,v=1)
           # print 'cmds.skinPercent(str(skncls[0]),tmpsknCube[0]'+"+'.vtx['+"+'str('+str(i)+')'+"+']'"+',tv=[(follJntLst[0],'+str(a[0])+'),'+'(follJntLst[1],'+str(a[1])+'),'+'(follJntLst[2],'+str(a[2])+'),'+'(follJntLst[3],'+str(a[3])+'),'+'(follJntLst[4],'+str(a[4])+')'+'])'
            
            
        def settmpskn():
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(0)+']',tv=[(follJntLst[0],0.879774389594),(follJntLst[1],0.120225610406),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(1)+']',tv=[(follJntLst[0],0.879774389594),(follJntLst[1],0.120225610406),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(2)+']',tv=[(follJntLst[0],0.879774387689),(follJntLst[1],0.120225612311),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(3)+']',tv=[(follJntLst[0],0.879774387689),(follJntLst[1],0.120225612311),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(4)+']',tv=[(follJntLst[0],0.871450372729),(follJntLst[1],0.128549627271),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(5)+']',tv=[(follJntLst[0],0.871450372729),(follJntLst[1],0.128549627271),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(6)+']',tv=[(follJntLst[0],0.850893089157),(follJntLst[1],0.149106910843),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(7)+']',tv=[(follJntLst[0],0.850893089157),(follJntLst[1],0.149106910843),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(8)+']',tv=[(follJntLst[0],0.818751809671),(follJntLst[1],0.181248190329),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(9)+']',tv=[(follJntLst[0],0.818751809671),(follJntLst[1],0.181248190329),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(10)+']',tv=[(follJntLst[0],0.766964002989),(follJntLst[1],0.221254449746),(follJntLst[2],0.0117815472651),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(11)+']',tv=[(follJntLst[0],0.766964002989),(follJntLst[1],0.221254449746),(follJntLst[2],0.0117815472651),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(12)+']',tv=[(follJntLst[0],0.710904328474),(follJntLst[1],0.270341778968),(follJntLst[2],0.0187538925576),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(13)+']',tv=[(follJntLst[0],0.710904328474),(follJntLst[1],0.270341778968),(follJntLst[2],0.0187538925576),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(14)+']',tv=[(follJntLst[0],0.646515308025),(follJntLst[1],0.324447740768),(follJntLst[2],0.0290369512072),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(15)+']',tv=[(follJntLst[0],0.646515308025),(follJntLst[1],0.324447740768),(follJntLst[2],0.0290369512072),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(16)+']',tv=[(follJntLst[0],0.576154216616),(follJntLst[1],0.380207082672),(follJntLst[2],0.0436387007128),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(17)+']',tv=[(follJntLst[0],0.576154216616),(follJntLst[1],0.380207082672),(follJntLst[2],0.0436387007128),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(18)+']',tv=[(follJntLst[0],0.502538729593),(follJntLst[1],0.433835024386),(follJntLst[2],0.0636262460207),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(19)+']',tv=[(follJntLst[0],0.502538729593),(follJntLst[1],0.433835024386),(follJntLst[2],0.0636262460207),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(20)+']',tv=[(follJntLst[0],0.428548586776),(follJntLst[1],0.481446516485),(follJntLst[2],0.0900048967383),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(21)+']',tv=[(follJntLst[0],0.428548586776),(follJntLst[1],0.481446516485),(follJntLst[2],0.0900048967383),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(22)+']',tv=[(follJntLst[0],0.35697531504),(follJntLst[1],0.519459276654),(follJntLst[2],0.123565408305),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(23)+']',tv=[(follJntLst[0],0.35697531504),(follJntLst[1],0.519459276654),(follJntLst[2],0.123565408305),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(24)+']',tv=[(follJntLst[0],0.29026568011),(follJntLst[1],0.545012610637),(follJntLst[2],0.164721709253),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(25)+']',tv=[(follJntLst[0],0.29026568011),(follJntLst[1],0.545012610637),(follJntLst[2],0.164721709253),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(26)+']',tv=[(follJntLst[0],0.227492034314),(follJntLst[1],0.549517024659),(follJntLst[2],0.210763443699),(follJntLst[3],0.0122274973288),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(27)+']',tv=[(follJntLst[0],0.227492034314),(follJntLst[1],0.549517024659),(follJntLst[2],0.210763443699),(follJntLst[3],0.0122274973288),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(28)+']',tv=[(follJntLst[0],0.17482791224),(follJntLst[1],0.542102207916),(follJntLst[2],0.263584915362),(follJntLst[3],0.0194849644819),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(29)+']',tv=[(follJntLst[0],0.17482791224),(follJntLst[1],0.542102207916),(follJntLst[2],0.263584915362),(follJntLst[3],0.0194849644819),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(30)+']',tv=[(follJntLst[0],0.13067330041),(follJntLst[1],0.519349523965),(follJntLst[2],0.319864165588),(follJntLst[3],0.0301130100373),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(31)+']',tv=[(follJntLst[0],0.13067330041),(follJntLst[1],0.519349523965),(follJntLst[2],0.319864165588),(follJntLst[3],0.0301130100373),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(32)+']',tv=[(follJntLst[0],0.0949421266467),(follJntLst[1],0.483193455966),(follJntLst[2],0.376727627326),(follJntLst[3],0.0451367900612),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(33)+']',tv=[(follJntLst[0],0.0949421266467),(follJntLst[1],0.483193455966),(follJntLst[2],0.376727627326),(follJntLst[3],0.0451367900612),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(34)+']',tv=[(follJntLst[0],0.0670284115299),(follJntLst[1],0.43659679082),(follJntLst[2],0.430746214135),(follJntLst[3],0.0656285835144),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(35)+']',tv=[(follJntLst[0],0.0670284115299),(follJntLst[1],0.43659679082),(follJntLst[2],0.430746214135),(follJntLst[3],0.0656285835144),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(36)+']',tv=[(follJntLst[0],0.0459719013321),(follJntLst[1],0.383155193581),(follJntLst[2],0.478286132083),(follJntLst[3],0.0925867730037),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(37)+']',tv=[(follJntLst[0],0.0459719013321),(follJntLst[1],0.383155193581),(follJntLst[2],0.478286132083),(follJntLst[3],0.0925867730037),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(38)+']',tv=[(follJntLst[0],0.0306300861095),(follJntLst[1],0.326644491082),(follJntLst[2],0.515942319242),(follJntLst[3],0.126783103566),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(39)+']',tv=[(follJntLst[0],0.0306300861095),(follJntLst[1],0.326644491082),(follJntLst[2],0.515942319242),(follJntLst[3],0.126783103566),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(40)+']',tv=[(follJntLst[0],0.0198293699905),(follJntLst[1],0.270586804799),(follJntLst[2],0.54098216838),(follJntLst[3],0.168601656831),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(41)+']',tv=[(follJntLst[0],0.0198293699905),(follJntLst[1],0.270586804799),(follJntLst[2],0.54098216838),(follJntLst[3],0.168601656831),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(42)+']',tv=[(follJntLst[0],0.0123247388089),(follJntLst[1],0.215217615569),(follJntLst[2],0.544915155192),(follJntLst[3],0.215217733972),(follJntLst[4],0.0123247564574)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(43)+']',tv=[(follJntLst[0],0.0123247388089),(follJntLst[1],0.215217615569),(follJntLst[2],0.544915155192),(follJntLst[3],0.215217733972),(follJntLst[4],0.0123247564574)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(44)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.168601548579),(follJntLst[2],0.540982126424),(follJntLst[3],0.270586929098),(follJntLst[4],0.0198293958992)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(45)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.168601548579),(follJntLst[2],0.540982126424),(follJntLst[3],0.270586929098),(follJntLst[4],0.0198293958992)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(46)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.126783012418),(follJntLst[2],0.51594224757),(follJntLst[3],0.32664461711),(follJntLst[4],0.0306301229009)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(47)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.126783012418),(follJntLst[2],0.51594224757),(follJntLst[3],0.32664461711),(follJntLst[4],0.0306301229009)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(48)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0925866991224),(follJntLst[2],0.478286035829),(follJntLst[3],0.383155313221),(follJntLst[4],0.0459719518269)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(49)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0925866991224),(follJntLst[2],0.478286035829),(follJntLst[3],0.383155313221),(follJntLst[4],0.0459719518269)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(50)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0656285258563),(follJntLst[2],0.430746100442),(follJntLst[3],0.436596895224),(follJntLst[4],0.0670284784778)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(51)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0656285258563),(follJntLst[2],0.430746100442),(follJntLst[3],0.436596895224),(follJntLst[4],0.0670284784778)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(52)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0451367467238),(follJntLst[2],0.376727504327),(follJntLst[3],0.483193536584),(follJntLst[4],0.0949422123652)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(53)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0451367467238),(follJntLst[2],0.376727504327),(follJntLst[3],0.483193536584),(follJntLst[4],0.0949422123652)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(54)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0301129786522),(follJntLst[2],0.319864041329),(follJntLst[3],0.519349573644),(follJntLst[4],0.130673406375)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(55)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0301129786522),(follJntLst[2],0.319864041329),(follJntLst[3],0.519349573644),(follJntLst[4],0.130673406375)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(56)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0194849425715),(follJntLst[2],0.263584796865),(follJntLst[3],0.542102221868),(follJntLst[4],0.174828038696)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(57)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0194849425715),(follJntLst[2],0.263584796865),(follJntLst[3],0.542102221868),(follJntLst[4],0.174828038696)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(58)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0122274825765),(follJntLst[2],0.210763336314),(follJntLst[3],0.549517001123),(follJntLst[4],0.227492179987)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(59)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0122274825765),(follJntLst[2],0.210763336314),(follJntLst[3],0.549517001123),(follJntLst[4],0.227492179987)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(60)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.164721614081),(follJntLst[3],0.545012545408),(follJntLst[4],0.290265840511)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(61)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.164721614081),(follJntLst[3],0.545012545408),(follJntLst[4],0.290265840511)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(62)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.123565330298),(follJntLst[3],0.519459182143),(follJntLst[4],0.356975487558)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(63)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.123565330298),(follJntLst[3],0.519459182143),(follJntLst[4],0.356975487558)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(64)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0900048351302),(follJntLst[3],0.481446398902),(follJntLst[4],0.428548765968)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(65)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0900048351302),(follJntLst[3],0.481446398902),(follJntLst[4],0.428548765968)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(66)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0636261991314),(follJntLst[3],0.433834891454),(follJntLst[4],0.502538909415)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(67)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0636261991314),(follJntLst[3],0.433834891454),(follJntLst[4],0.502538909415)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(68)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.043638666309),(follJntLst[3],0.380206942527),(follJntLst[4],0.576154391164)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(69)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.043638666309),(follJntLst[3],0.380206942527),(follJntLst[4],0.576154391165)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(70)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0290369268527),(follJntLst[3],0.324447600838),(follJntLst[4],0.64651547231)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(71)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0290369268527),(follJntLst[3],0.324447600838),(follJntLst[4],0.64651547231)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(72)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0187538758931),(follJntLst[3],0.270341644982),(follJntLst[4],0.710904479125)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(73)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0187538758931),(follJntLst[3],0.270341644982),(follJntLst[4],0.710904479125)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(74)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0117815361811),(follJntLst[3],0.221254324938),(follJntLst[4],0.766964138881)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(75)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0117815361811),(follJntLst[3],0.221254324938),(follJntLst[4],0.766964138881)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(76)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.181248072516),(follJntLst[4],0.818751927484)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(77)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.181248072516),(follJntLst[4],0.818751927484)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(78)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.149106798705),(follJntLst[4],0.850893201295)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(79)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.149106798705),(follJntLst[4],0.850893201295)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(80)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.128549508512),(follJntLst[4],0.871450491488)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(81)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.128549508512),(follJntLst[4],0.871450491488)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(82)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.120225518622),(follJntLst[4],0.879774481378)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(83)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.120225518622),(follJntLst[4],0.879774481378)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(84)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.120225520527),(follJntLst[4],0.879774479473)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(85)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.120225520527),(follJntLst[4],0.879774479473)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(86)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.128549532161),(follJntLst[4],0.871450467839)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(87)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.128549532161),(follJntLst[4],0.871450467839)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(88)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.149106807882),(follJntLst[4],0.850893192118)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(89)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.149106807882),(follJntLst[4],0.850893192118)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(90)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.181248076077),(follJntLst[4],0.818751923923)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(91)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0),(follJntLst[3],0.181248076077),(follJntLst[4],0.818751923923)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(92)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0117815362406),(follJntLst[3],0.22125432629),(follJntLst[4],0.766964137469)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(93)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0117815362406),(follJntLst[3],0.22125432629),(follJntLst[4],0.766964137469)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(94)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0187538759133),(follJntLst[3],0.270341645503),(follJntLst[4],0.710904478584)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(95)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0187538759133),(follJntLst[3],0.270341645503),(follJntLst[4],0.710904478584)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(96)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0290369268596),(follJntLst[3],0.324447601038),(follJntLst[4],0.646515472103)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(97)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0290369268596),(follJntLst[3],0.324447601038),(follJntLst[4],0.646515472103)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(98)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0436386663114),(follJntLst[3],0.380206942604),(follJntLst[4],0.576154391085)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(99)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0436386663114),(follJntLst[3],0.380206942604),(follJntLst[4],0.576154391085)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(100)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0636261991324),(follJntLst[3],0.433834891484),(follJntLst[4],0.502538909384)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(101)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0636261991324),(follJntLst[3],0.433834891484),(follJntLst[4],0.502538909384)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(102)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0900048351308),(follJntLst[3],0.481446398914),(follJntLst[4],0.428548765955)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(103)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.0900048351308),(follJntLst[3],0.481446398914),(follJntLst[4],0.428548765955)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(104)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.123565330299),(follJntLst[3],0.519459182148),(follJntLst[4],0.356975487553)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(105)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.123565330299),(follJntLst[3],0.519459182148),(follJntLst[4],0.356975487553)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(106)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.164721614082),(follJntLst[3],0.54501254541),(follJntLst[4],0.290265840509)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(107)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0),(follJntLst[2],0.164721614082),(follJntLst[3],0.54501254541),(follJntLst[4],0.290265840509)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(108)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0122274825765),(follJntLst[2],0.210763336314),(follJntLst[3],0.549517001123),(follJntLst[4],0.227492179986)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(109)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0122274825765),(follJntLst[2],0.210763336314),(follJntLst[3],0.549517001123),(follJntLst[4],0.227492179986)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(110)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0194849425715),(follJntLst[2],0.263584796865),(follJntLst[3],0.542102221868),(follJntLst[4],0.174828038695)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(111)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0194849425715),(follJntLst[2],0.263584796865),(follJntLst[3],0.542102221868),(follJntLst[4],0.174828038695)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(112)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0301129786522),(follJntLst[2],0.31986404133),(follJntLst[3],0.519349573644),(follJntLst[4],0.130673406374)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(113)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0301129786522),(follJntLst[2],0.31986404133),(follJntLst[3],0.519349573644),(follJntLst[4],0.130673406374)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(114)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0451367467238),(follJntLst[2],0.376727504328),(follJntLst[3],0.483193536583),(follJntLst[4],0.0949422123647)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(115)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0451367467238),(follJntLst[2],0.376727504328),(follJntLst[3],0.483193536583),(follJntLst[4],0.0949422123647)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(116)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0656285258563),(follJntLst[2],0.430746100443),(follJntLst[3],0.436596895223),(follJntLst[4],0.0670284784774)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(117)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0656285258563),(follJntLst[2],0.430746100443),(follJntLst[3],0.436596895223),(follJntLst[4],0.0670284784774)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(118)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0925866991224),(follJntLst[2],0.47828603583),(follJntLst[3],0.383155313221),(follJntLst[4],0.0459719518266)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(119)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.0925866991224),(follJntLst[2],0.47828603583),(follJntLst[3],0.383155313221),(follJntLst[4],0.0459719518266)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(120)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.126783012418),(follJntLst[2],0.515942247571),(follJntLst[3],0.32664461711),(follJntLst[4],0.0306301229007)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(121)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.126783012418),(follJntLst[2],0.515942247571),(follJntLst[3],0.32664461711),(follJntLst[4],0.0306301229007)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(122)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.168601548579),(follJntLst[2],0.540982126425),(follJntLst[3],0.270586929097),(follJntLst[4],0.0198293958991)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(123)+']',tv=[(follJntLst[0],0.0),(follJntLst[1],0.168601548579),(follJntLst[2],0.540982126425),(follJntLst[3],0.270586929097),(follJntLst[4],0.0198293958991)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(124)+']',tv=[(follJntLst[0],0.0123247388089),(follJntLst[1],0.215217615569),(follJntLst[2],0.544915155193),(follJntLst[3],0.215217733971),(follJntLst[4],0.0123247564573)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(125)+']',tv=[(follJntLst[0],0.0123247388089),(follJntLst[1],0.215217615569),(follJntLst[2],0.544915155193),(follJntLst[3],0.215217733971),(follJntLst[4],0.0123247564573)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(126)+']',tv=[(follJntLst[0],0.0198293699905),(follJntLst[1],0.270586804798),(follJntLst[2],0.540982168381),(follJntLst[3],0.16860165683),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(127)+']',tv=[(follJntLst[0],0.0198293699905),(follJntLst[1],0.270586804798),(follJntLst[2],0.540982168381),(follJntLst[3],0.16860165683),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(128)+']',tv=[(follJntLst[0],0.0306300861095),(follJntLst[1],0.326644491082),(follJntLst[2],0.515942319243),(follJntLst[3],0.126783103566),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(129)+']',tv=[(follJntLst[0],0.0306300861095),(follJntLst[1],0.326644491082),(follJntLst[2],0.515942319243),(follJntLst[3],0.126783103566),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(130)+']',tv=[(follJntLst[0],0.0459719013321),(follJntLst[1],0.383155193581),(follJntLst[2],0.478286132084),(follJntLst[3],0.0925867730032),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(131)+']',tv=[(follJntLst[0],0.0459719013321),(follJntLst[1],0.383155193581),(follJntLst[2],0.478286132084),(follJntLst[3],0.0925867730032),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(132)+']',tv=[(follJntLst[0],0.0670284115299),(follJntLst[1],0.43659679082),(follJntLst[2],0.430746214136),(follJntLst[3],0.0656285835141),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(133)+']',tv=[(follJntLst[0],0.0670284115299),(follJntLst[1],0.43659679082),(follJntLst[2],0.430746214136),(follJntLst[3],0.0656285835141),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(134)+']',tv=[(follJntLst[0],0.0949421266467),(follJntLst[1],0.483193455966),(follJntLst[2],0.376727627326),(follJntLst[3],0.0451367900609),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(135)+']',tv=[(follJntLst[0],0.0949421266467),(follJntLst[1],0.483193455966),(follJntLst[2],0.376727627326),(follJntLst[3],0.0451367900609),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(136)+']',tv=[(follJntLst[0],0.13067330041),(follJntLst[1],0.519349523965),(follJntLst[2],0.319864165588),(follJntLst[3],0.0301130100371),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(137)+']',tv=[(follJntLst[0],0.13067330041),(follJntLst[1],0.519349523965),(follJntLst[2],0.319864165588),(follJntLst[3],0.0301130100371),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(138)+']',tv=[(follJntLst[0],0.17482791224),(follJntLst[1],0.542102207916),(follJntLst[2],0.263584915362),(follJntLst[3],0.0194849644818),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(139)+']',tv=[(follJntLst[0],0.17482791224),(follJntLst[1],0.542102207916),(follJntLst[2],0.263584915362),(follJntLst[3],0.0194849644818),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(140)+']',tv=[(follJntLst[0],0.227492034314),(follJntLst[1],0.549517024658),(follJntLst[2],0.210763443699),(follJntLst[3],0.0122274973287),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(141)+']',tv=[(follJntLst[0],0.227492034314),(follJntLst[1],0.549517024658),(follJntLst[2],0.210763443699),(follJntLst[3],0.0122274973287),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(142)+']',tv=[(follJntLst[0],0.290265680112),(follJntLst[1],0.545012610636),(follJntLst[2],0.164721709253),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(143)+']',tv=[(follJntLst[0],0.290265680112),(follJntLst[1],0.545012610636),(follJntLst[2],0.164721709253),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(144)+']',tv=[(follJntLst[0],0.356975315045),(follJntLst[1],0.51945927665),(follJntLst[2],0.123565408305),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(145)+']',tv=[(follJntLst[0],0.356975315045),(follJntLst[1],0.51945927665),(follJntLst[2],0.123565408305),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(146)+']',tv=[(follJntLst[0],0.428548586788),(follJntLst[1],0.481446516474),(follJntLst[2],0.0900048967381),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(147)+']',tv=[(follJntLst[0],0.428548586788),(follJntLst[1],0.481446516474),(follJntLst[2],0.0900048967381),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(148)+']',tv=[(follJntLst[0],0.502538729623),(follJntLst[1],0.433835024357),(follJntLst[2],0.0636262460199),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(149)+']',tv=[(follJntLst[0],0.502538729623),(follJntLst[1],0.433835024357),(follJntLst[2],0.0636262460199),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(150)+']',tv=[(follJntLst[0],0.576154216694),(follJntLst[1],0.380207082595),(follJntLst[2],0.0436387007106),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(151)+']',tv=[(follJntLst[0],0.576154216694),(follJntLst[1],0.380207082595),(follJntLst[2],0.0436387007106),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(152)+']',tv=[(follJntLst[0],0.646515308231),(follJntLst[1],0.324447740569),(follJntLst[2],0.0290369512004),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(153)+']',tv=[(follJntLst[0],0.646515308231),(follJntLst[1],0.324447740569),(follJntLst[2],0.0290369512004),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(154)+']',tv=[(follJntLst[0],0.710904329014),(follJntLst[1],0.270341778448),(follJntLst[2],0.0187538925375),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(155)+']',tv=[(follJntLst[0],0.710904329014),(follJntLst[1],0.270341778448),(follJntLst[2],0.0187538925375),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(156)+']',tv=[(follJntLst[0],0.7669640044),(follJntLst[1],0.221254448394),(follJntLst[2],0.0117815472057),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(157)+']',tv=[(follJntLst[0],0.7669640044),(follJntLst[1],0.221254448394),(follJntLst[2],0.0117815472057),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(158)+']',tv=[(follJntLst[0],0.818751813231),(follJntLst[1],0.181248186769),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(159)+']',tv=[(follJntLst[0],0.818751813231),(follJntLst[1],0.181248186769),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(160)+']',tv=[(follJntLst[0],0.850893098333),(follJntLst[1],0.149106901667),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(161)+']',tv=[(follJntLst[0],0.850893098333),(follJntLst[1],0.149106901667),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(162)+']',tv=[(follJntLst[0],0.871450396377),(follJntLst[1],0.128549603623),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
            cmds.skinPercent(str(skncls[0]),tmpsknCube[0]+'.vtx['+str(163)+']',tv=[(follJntLst[0],0.871450396377),(follJntLst[1],0.128549603623),(follJntLst[2],0.0),(follJntLst[3],0.0),(follJntLst[4],0.0)])
    
                
            
        settmpskn()    
    
    
    
    
    




a=cmds.promptDialog(
    		title='FollicleCreate',
    		message='Name of the RigPart',
    		button=['Create', "Close"],
    		defaultButton='Create',
    		cancelButton="Close",
    		)
if a == 'Create':
    textw = cmds.promptDialog(query=True, text=True)
    Gloablname = textw
    CreateSurface()
    
else:
    print 'Process Cancled'