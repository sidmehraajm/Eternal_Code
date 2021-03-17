import pymel.core as pm
b= pm.ls(sl=1)
c = cmds.ls(sl=1)
a = JointProc()
a.CtrJntEach(pm.ls(sl=1))
a.CtrJnt(Piv= b)
a.CtrJntEach(pm.ls(sl=1))
class JointProc:
    '''
    use 
    '''


    
   
    
    import pymel.core as pm

    
    
    def __init__(self):
        self.sel = pm.ls(sl=1)
        
    def getSelection(self,Pivs = cmdsSel):
        pivsList=[]
        if Piv:
            components = Pivs
        else:
            
        selList = []
        objName = components[0][0:components[0].index(".")]
        # go through every component in the list. If it is a single component ("pCube1.vtx[1]"), add it to the list. Else,
        # add each component in the index ("pCube1.vtx[1:5]") to the list
        for c in components:
            if ":" not in c:
                selList.append(c)
            else:
                print c
                startComponent = int(c[c.index("[") + 1: c.index(":")])
                endComponent = int(c[c.index(":") + 1:c.index("]")])
                componentType = c[c.index(".") + 1:c.index("[")]
                while startComponent <= endComponent:
                    selList.append(objName + "." + componentType + "[" + str(startComponent) + "]")
                    startComponent += 1
    
         
        pivsList.append(selList)
        return pivsList
        
      
        
        
        
    
    def CtrJnt(self,Piv=sel):
        #createJoint
    
        sl = Piv
        try:
            pm.select(sl)
            tempPos = pm.cluster(n='Temp')[1]
            Jnt = pm.createNode('joint',n = (sl[0]+'Jnt'))
            pm.delete(pm.parentConstraint(tempPos,Jnt))
            pm.delete(tempPos)
            
            
            
            
        except:
            tempPos = pm.createNode('transform',n = 'Temp')
            pm.delete(pm.parentConstraint(sl,tempPos))
            Jnt = pm.createNode('joint',n = (sl[0]+'_Jnt'))
            pm.delete(pm.parentConstraint(tempPos,Jnt))
            pm.delete(tempPos)
            
            
            
        
        
    
    def CtrJntEach(self,cmdsSel):
        
        #createJoint
        try:
            sl = pivsList
            #print sl
        
        except:sl= cmdsSel
        for i in sl:
            
            
            try:
                pm.select(i)
                tempPos = pm.cluster(n='Temp')[1]
                Jnt = pm.createNode('joint',n = (i+'Jnt'))
                pm.delete(pm.parentConstraint(tempPos,Jnt))
                pm.delete(tempPos)
                
                
                
                
            except:
                tempPos = pm.createNode('transform',n = 'Temp')
                pm.delete(pm.parentConstraint(i,tempPos))
                Jnt = pm.createNode('joint',n = (i+'_Jnt'))
                pm.delete(pm.parentConstraint(tempPos,Jnt))
                pm.delete(tempPos)
                
            
            

    
    