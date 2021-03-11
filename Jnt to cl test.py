import pymel.core as pm

jnt = pm.PyNode('joint 2')

sel = pm.ls(sl=1)[0]
his = pm.listHistory(sel)
Skin = pm.ls(his,type = 'skinCluster')[0]

jnts = pm.skinCluster(Skin,q=1,inf =1)


vtxCnt = pm.polyEvaluate(sel,v=1)
pm.select(cl=1)

pm.skinCluster(Skin,siv=jnt,e=1)
vtx = pm.ls(sl=1,fl=1)
pos = pm.xform(jnt,q=1,ws=1,t=1)
cl= pm.cluster(n=jnt+'CL')
cl[1].origin.set(pos)
cl[1].rotatePivot.set(pos)
cl[1].scalePivot.set(pos)

clSet = pm.listConnections(cl[0],t = 'objectSet')



for i in vtx:
    skinData = pm.skinPercent(Skin,i,q=1,t=jnt,v=1)
    pm.percent(cl[0],i,v=skinData)
    print skinData