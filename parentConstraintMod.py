import maya.cmds as cmds
def constraintModule(skipRotateAxis = [],skipTranslateAxis = [], parent = '', children = [],maintainOffset=1):
    if parent =='':
        raise RuntimeError('No partent assigned')
    if len(children)<=0:
        raise RuntimeError('No children assigned')
    
    for i in children:
        cmds.parentConstraint(parent,i,st = skipTranslateAxis,sr = skipRotateAxis,mo = maintainOffset)
        
        
constraintModule(skipRotateAxis = [],skipTranslateAxis = [], parent = 'pSphere1', children = ['pDisc1','pDisc2','pDisc3','pDisc4','pDisc5','pDisc6','pDisc7','pDisc8'],maintainOffset=1)        
        
