#just select and run it will fix all the joints in the selected hiearchy
import pymel.core as pm

def fixSkinnedJointsRots(selection):
    alljnts = []
    alljnts = pm.listRelatives(ad=1,typ = 'joint')
    
    if pm.objectType(selection[0])== 'joint':
        alljnts.append(selection[0])
    
    for i in alljnts:
        tmpNode = pm.createNode('transform',name = 'tmpDelete')
        objParent = pm.listRelatives(i,p=1)
        pm.delete(pm.parentConstraint(i,tmpNode))
        
        try:pm.parent(tmpNode,objParent)
        except:pass
        tmpRot = tmpNode.rotate.get()
        i.jointOrient.set(tmpRot)
        i.rotate.set(0,0,0)
        pm.delete(tmpNode)
        
        
selection = pm.ls(sl=1)
fixSkinnedJointsRots(selection)


