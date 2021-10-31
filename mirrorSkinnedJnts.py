#mirror skined joints

def mirrorSknJnts(jnt,pref='L_',mirPrf = 'R'):
        
    for i in jnt:
        if pm.objectType(i,i = 'joint'):
            mirrJnts = pm.mirrorJoint(i,mirrorYZ =1, mb =1,sr =(str(pref),"tmp"+mirPrf+'_'))[0]
            
            opoJntName = mirrJnts.replace(('tmp'+mirPrf),mirPrf)
            obT = pm.xform(mirrJnts,q=1,ws=1,t=1)
            obR = pm.xform(mirrJnts,q=1,ws=1,ro=1)
           
            
            newJnt = pm.PyNode(opoJntName)
            obParent = pm.listRelatives(newJnt,p=1)
            if obParent:
                pm.parent(newJnt,w=1)
            obChild = pm.listRelatives(newJnt,c=1)
            if obChild:
                pm.parent(obChild,w=1)    
                
            newJnt.rotate.set(0,0,0)
            newJnt.jointOrient.set(obR)
            
            if obParent:
                pm.parent(newJnt,obParent)
            if obChild:
                pm.parent(obChild,newJnt)
            
            pm.delete(mirrJnts)
            pm.select(newJnt)
            
        
        
sel = pm.ls(sl=1)
#mirrorSknJnts(sel)
        
        
            
            
            
            
            
            
            
            
            
            
            