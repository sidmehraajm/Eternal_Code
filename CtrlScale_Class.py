#a = MedullaControl(Cscale = 2)
a.C(Cscale = 1)



import pymel.core as pm
class MedullaControl():
	
	 
	
	def __init__(self,
	prefix = 'Temp',
	Cscale = 1.0,
	mT = '',
	mR = '',
	shape='',
	CtlParent = '',
	Ccolor = 'BLue',
	lockChannels = ['v','s']
	
	):
		
		
			
	
	
	
		ctrl = pm.circle(n = prefix + '_Ctrl',ch=0,nr=[1,0,0])[0]
		OffGroup = pm.group(ctrl,n=prefix + '_Ctrl_Group')
		Medulla = pm.createNode('network',n=(prefix+'_Medulla_NTW'))
		CtrlPy = pm.PyNode(ctrl)
		OffPy = pm.PyNode(OffGroup)
		MedPy = pm.PyNode(Medulla)
		
		pm.addAttr(ctrl,dt = 'string',ln='MedCon')
		pm.addAttr(OffGroup,dt = 'string',ln='MedCon')
		
		pm.addAttr(Medulla,dt = 'string',ln='Control')
		pm.addAttr(Medulla,dt = 'string',ln='ControlScale')
		pm.addAttr(Medulla,dt = 'string',ln='ControlOffGroup')
		pm.addAttr(Medulla,dt = 'string',ln='ControlColor')
		pm.addAttr(Medulla,dt = 'string',ln='ControlShape')
		
		CtrlPy.MedCon>>MedPy.Control
		OffPy.MedCon>>MedPy.ControlOffGroup
		
		OffGroup ='nurbsCircle2'
	

        #translate Control

		if pm.objExists(mT):
			
			try:

				pm.delete(pm.pointConstraint(mT,OffPy))
				
			except:
				print 'Unable to Move control to given translate object'
			

        #Rotate Control

		if pm.objExists(mR):
			try:
				pm.orientConstraint(mR,OffPy)
				
			except:
				print 'Unable to Rotate control to given rotate object'


        #Control Parent

		if pm.objExists(CtlParent):
			try:
				pm.parent(OffPy,CtlParent)
			except:
				print 'Unable to Parent control to given Parent object'

        #Locking chanells 
		singleAttrLockList = []
		
		
		for lockChannels in lockChannels:
			
			if lockChannels in ['t','r','s']:
				for axis in ['x','y','z']:
					at = lockChannels+axis
					singleAttrLockList.append(at)



			else:
				singleAttrLockList.append(lockChannels)




		for at in singleAttrLockList:
			
		
			try:
				pm.setAttr(ctrl+'.'+at,l=True,k=0)
			except:
				print('Unable to lock'+ctrl+'.'+at)
				
				
				
		
		




		#controlColor
		ctrlShape = pm.listRelatives(ctrl,s=True)
		[pm.setAttr(i+'.ove',1)for i in ctrlShape]
		ConvCol = Ccolor.lower()
		
		try:
			if (ConvCol=='blue'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',6 )	
			if (ConvCol=='red'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',13 )	
			if (ConvCol=='green'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',14 )	
			if (ConvCol=='white'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',16 )	
			if (ConvCol=='none'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',0 )	
			if (ConvCol=='purple'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',30 )	
			if (ConvCol=='cyan'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',18 )	
			if (ConvCol=='peach'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',20 )	
			if (ConvCol=='black'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',1 )	
			if (ConvCol=='pink'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',31 )	
			if (ConvCol=='brown'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',10 )	
			if (ConvCol=='darkgrey'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',2 )	
			if (ConvCol=='darkbrown'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',11 )	
			if (ConvCol=='magenta'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',9 )	
			if (ConvCol=='yellow'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',17 )	
			if (ConvCol=='grey'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',3 )	
			if (ConvCol=='navyblue'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',29 )	
			if (ConvCol=='lightblue'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',28 )	
			if (ConvCol=='orange'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',21 )
			if (ConvCol=='leafgreen'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',23 )		
			if (ConvCol=='poop'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',23 )		
			if (ConvCol=='parrotgreen'):
				for s in ctrlShape:
					pm.setAttr( s + '.ovc',26 )		
					
										
		except:
			print (ConvCol + ' is not in Dir. Example: blue, darkgrey')
			
		
		v = Cscale
		
		b = ctrl
		
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
	
    





		# Add Public Members
		self.C = CtrlPy
		self.Off = OffPy
		self.Med = MedPy