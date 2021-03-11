import pymel.core as pm

v = 1.1

b = pm.ls(sl=True)[0]

a = pm.listRelatives(b,s=1)
TmpTrans = []
newShp = []

for i in a:
	tmtr  = pm.createNode('transform',n=('temp'+i))
	pm.parent(i,tmtr,r =True, s = True)
	
	#nshape = pm.duplicate(i,n=('temp'+i))
	pm.xform(tmtr,s=(v,v,v))
	pm.makeIdentity(tmtr, apply=True, t=1, r=1, s=1 )
	newShp.append(i)
	TmpTrans.append(tmtr)
	
pm.select(cl=True)



for i in newShp:
	pm.select(i)
	pm.rename(i,b+'_Shape_00')
	pm.select(b , add=True)
	pm.parent(r=True,s=True)
pm.delete(TmpTrans)
pm.select(b)