import pymel.core as pm
import maya.cmds as cmds

def creatSoftModCtrl(vtx):
        
    for i in vtx:
        a = str(type(i))
        if a == "<class 'pymel.core.general.MeshVertex'>":
            name = (str(i))
            ModifiedName = re.sub(r'[^\w]', '_', name)    
            print (ModifiedName)
        else:
            print('Wrong Selection, Only select verticies')
            break
        pos = pm.pointPosition(i)
        
        name = (str(i))
        ModifiedName = re.sub(r'[^\w]', '_', name)    
        ctl = pm.curve(n = ModifiedName +'_SoftMod_Handle_Ctrl' ,d=1, p=[(1, 1, 1),(1, 1, -1),(-1, 1, -1),(-1, 1, 1),(1, 1, 1),(1, -1, 1),(1, -1, -1),(1, 1, -1),(-1, 1, -1),(-1, -1, -1),(1, -1, -1),(-1, -1, -1),(-1, -1, 1),(-1, 1, 1),(-1, -1, 1),(1, -1, 1)], k=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
            
        pm.addAttr(ctl , ln = 'fallOff', at = 'double', dv = 20) 
        pm.setAttr(ctl.fallOff, k=1)
        pm.addAttr(ctl , ln = 'fallOffMode', at = 'enum', en = 'volume:surface') 
        pm.setAttr(ctl.fallOffMode, k=1)    
        pm.addAttr(ctl , ln = 'globalScale', at = 'double', dv = 1) 
        pm.setAttr(ctl.globalScale, k=1)   
        grp = pm.createNode('transform',n = ModifiedName + '_ctrl_grp' )
        loc = pm.spaceLocator(n = ModifiedName+'_SoftMod_Ctrl') 
        pm.select(cl=1)
        pm.parent(loc,grp)
        pm.parent(ctl,loc)
        grp.translate.set(pos)
        mesh = pm.listTransforms(i.split('.')[0])[0]
        pm.select(mesh)
        sfMod = cmds.softMod(wn = (str(mesh),str(mesh)))
        pm.select(cl=1)
        cmds.softMod(sfMod[0],e=1,wn = (str(ctl),str(ctl)))
        pm.setAttr(sfMod[0]+'.falloffAroundSelection',0)
        pm.connectAttr(loc.worldPosition[0],sfMod[0]+'.falloffCenter')
        mdl = pm.createNode('multDoubleLinear',n = ModifiedName+'_MDL')
        pm.connectAttr(ctl.fallOffMode,sfMod[0]+'.falloffMode')
        ctl.fallOff>>mdl.input1
        ctl.globalScale>>mdl.input2
        pm.connectAttr(mdl.output,sfMod[0]+'.falloffRadius')
        pm.connectAttr(loc.worldInverseMatrix[0],str(sfMod[0])+'.bindPreMatrix')
        
        
           
sl = pm.ls(sl=1,fl=1)
creatSoftModCtrl(sl)         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
        
    





