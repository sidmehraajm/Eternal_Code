import pymel.core as pm


class CreateControl(object):
    
    def __init__(self):
        self.Sid=[]
        print 'Create Control'

    def getPos(self):
        try:
            self.selection = pm.ls(sl=1)[0]
            self.position = pm.xform(selection,q=1,ws=1,rt=1)
            print self.position
        except:
            self.position = [0,0,0,0,0,0]
            print self.position

        

    def CC(self,name = 'Temp',size = '1',shape = 'Circle'):
        print 'Okay'

        



        
