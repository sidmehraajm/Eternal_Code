import maya.cmds as cmds

#Get list of all the selected objects

selctedObj=cmds.ls(selection=True)
Objc=cmds.listRelatives(selctedObj,shapes=True)
size = len(Objc)
#Enable drawing overrides 
for i in range(0,size):
	cmds.setAttr(str(Objc[i])+'.overrideEnabled',1)
	#Choose the color
	cmds.setAttr(str(Objc[i])+'.overrideColor',12)