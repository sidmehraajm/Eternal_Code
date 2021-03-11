import maya.cmds as cmds
import maya.mel as mel
clusterList=[]
ctrlList=[]
curveOptionFinal=[]


def UI():
    
    if cmds.window('Wire', exists=True ):
        
        cmds.deleteUI( 'Wire', window=True )
        
        
    if cmds.windowPref('Wire', exists=1 ):
        
        cmds.windowPref( 'Wire', r=1 )
        
    cmds.window('Wire',title="WireControler", iconName='Short Name',s=0)
    
    
    cmds.columnLayout(adj=False)
    cmds.button(l='Create 8 Control Wire(Adjust controllers ac to the mesh)',h=50,c='Eightcrv()')
    cmds.button(l='Create 5 Control Wire(Adjust controllers ac to the mesh)',h=50,c='Fivecrv()')
    cmds.button(l='FinalizeRig (Select Mesh and Wire)',w=300,h=100,c='final()')
    cmds.showWindow('Wire')









def Eightcrv():
        
    GlobalName = 'tmp'
    basecurve8 = cmds.rename( mel.eval("curve -d 3 -p -7 0 0 -p -5 0 0 -p -3 0 0 -p -1 0 0 -p 1 0 0 -p 3 0 0 -p 5 0 0 -p 7 0 0 -k 0 -k 0 -k 0 -k 1 -k 2 -k 3 -k 4 -k 5 -k 5 -k 5 ;"),(GlobalName+'_Wire'))
    
    curve8Size = 8
    

    
    
    
    curveOption = basecurve8
    curveOptionFinal.append(curveOption)
    curveSize=curve8Size
    
    for i in range(curveSize):
        cls = cmds.cluster(str(curveOption)+'.cv['+str(i)+']',n=(GlobalName+'CrvCls_0'+str(i)))
        clusterList.append(cls[1])
        
        
    for i in clusterList:
        tmpctrls = cmds.circle(n=(i+'_Ctrl'),nr=[1,0,0],ch=0)
        cmds.delete(cmds.pointConstraint(i,tmpctrls))
        cmds.makeIdentity(tmpctrls, apply=True, t=1, r=1, s=1 )
        cmds.pointConstraint(tmpctrls,i,mo=True)
        ctrlList.append(tmpctrls[0])
        
        
    clGrp = cmds.group(clusterList,n=('Cl_Group'+GlobalName))
    ctrlGrp = cmds.group(ctrlList,n=('Ctrl_Group'+GlobalName))
    
    mainGrp = cmds.group(clGrp,ctrlGrp,curveOption,n=('Main_'+GlobalName+'_Grp'))
    return ctrlList
    



def Fivecrv():
    
    GlobalName = 'tmp'
    
    
    basecurve5 = cmds.rename( mel.eval("curve -d 3 -p -4 0 0 -p -2 0 0 -p 0 0 0 -p 2 0 0 -p 4 0 0 -k 0 -k 0 -k 0 -k 1 -k 2 -k 2 -k 2 ;"),(GlobalName+'_Wire'))
    curve5Size = 5
    
    
    
    curveOption = basecurve5
    curveOptionFinal.append(curveOption)
    curveSize=curve5Size
    
    for i in range(curveSize):
        cls = cmds.cluster(str(curveOption)+'.cv['+str(i)+']',n=(GlobalName+'CrvCls_0'+str(i)))
        clusterList.append(cls[1])
        
        
    for i in clusterList:
        tmpctrls = cmds.circle(n=(i+'_Ctrl'),nr=[1,0,0],ch=0)
        cmds.delete(cmds.pointConstraint(i,tmpctrls))
        cmds.makeIdentity(tmpctrls, apply=True, t=1, r=1, s=1 )
        cmds.pointConstraint(tmpctrls,i,mo=True)
        ctrlList.append(tmpctrls[0])
        
        
    clGrp = cmds.group(clusterList,n=('Cl_Group'+GlobalName))
    ctrlGrp = cmds.group(ctrlList,n=('Ctrl_Group'+GlobalName))
    
    mainGrp = cmds.group(clGrp,ctrlGrp,curveOption,n=('Main_'+GlobalName+'_Grp'))
    
    
    return ctrlList














def final():



    mesh=cmds.ls(sl=True)
    cmds.select(cl =True)
    
    for i in ctrlList:
        cmds.makeIdentity(i, apply=True, t=1, r=1, s=1 )
    
    wireDeformer = mel.eval("wire -gw false -en 1.000000 -ce 0.000000 -li 0.000000 -w "+str(mesh[1]) +" "+ str(mesh[0])+";")
    cmds.setAttr(str(wireDeformer[0])+'.dropoffDistance[0]',20)
    
    
    




UI()