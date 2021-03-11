#zeroout

slc = cmds.ls(sl=True,tr=1)
selList = []
try:
        
    parentt=cmds.listRelatives(p=True)
    sz= len(parentt)
    if sz>0:
        for each in slc:
            newName = each.replace(parentt[0]+'|','')
            selList.append(newName)
            print newName
        
        
    else:
        pass
        
except:
    pass
    print 'passed parent ftn'

    
for i in slc:
    
    
    tmploc = cmds.spaceLocator()
    cmds.delete(cmds.parentConstraint(i,tmploc))
    pos = cmds.xform(tmploc, q=True, t=True, ws=True)
    rot = cmds.xform(tmploc, q=True, ro=True, ws=True)
    try:
        name = i.replace(parentt[0]+'|','')
    except:
        name = i
    offgrp = cmds.createNode('transform',n=(name+'_ZO_Grp'))
    
    cmds.xform(offgrp, translation=pos, ws=True)
    cmds.xform(offgrp, rotation=rot, ws=True)
    cmds.delete(tmploc)
    cmds.parent(i,offgrp)
    cmds.select(cl=True)