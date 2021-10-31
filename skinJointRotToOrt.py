import pymel.core as pm

#Skined Joints Rotation to Orientation
sl = pm.ls(sl=1)
jntRotToOrt(sl)
def jntRotToOrt(jnt):
    

    for i in jnt:
        if pm.objectType(i,i = 'joint'):
            obParent = pm.listRelatives(i,p=1)
            if obParent:
                pm.parent(i,w=1)
            obChild = pm.listRelatives(i,c=1)
            if obChild:
                pm.parent(obChild,w=1)    
                
            obT = pm.xform(i,q=1,ws=1,t=1)
            obR = pm.xform(i,q=1,ws=1,ro=1)
           
            
            
            i.rotate.set(0,0,0)
            i.jointOrient.set(obR)
            if obParent:
                pm.parent(i,obParent)
            if obChild:
                pm.parent(obChild,i)
            pm.select(i)
        else:
            sys.stdout.write(str(i)+' is not a Joint')
            pm.select(i)
            
            
        
    
    
    
    
    
    
    
    
