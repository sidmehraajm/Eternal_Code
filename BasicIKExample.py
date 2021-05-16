shldJnt = pm.joint(n='LT_Shoulder')
elbowJnt = pm.joint(n='LT_Elbow')
handJnt = pm.joint(n='LT_Hand')

joints = shldJnt,elbowJnt,handJnt


shldJnt.translate.set(0,5,5)
elbowJnt.translate.set(-.2,0,-5)
handJnt.translate.set(.2,0,-5)

pm.joint(joints,e=1,oj = 'xyz',secondaryAxisOrient = 'yup',ch =0,zso =1)

handJnt.jointOrient.set(0,2,0)


IkCtrl = pm.circle(n='IK_Ctrl',r=2,ch=0)
pm.delete(pm.parentConstraint(handJnt,IkCtrl,mo=0))
pm.select(cl=1)
CtrlOffset = pm.group(n = 'IK_Ctrl_Offset')
pm.delete(pm.parentConstraint(IkCtrl,CtrlOffset,mo=0))
pm.parent(IkCtrl,CtrlOffset)



pm.select(shldJnt,handJnt,r=1)
IK = pm.ikHandle(n='IK_Handle')[0]
pm.parentConstraint(IkCtrl,IK)

pm.select(cl=1)
MainGrp = pm.group(n = 'IK_Main_Group_00')

pm.parent(shldJnt,MainGrp)
pm.parent(CtrlOffset,MainGrp)
pm.parent(IK,MainGrp)
pm.select(cl=1)