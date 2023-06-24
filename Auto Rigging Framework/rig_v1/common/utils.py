import maya.cmds as cmds
import pymel.core as pm
import common.utils as ut

class utilites():
    '''
    TODO write doc
    '''

    def object_tag(self,obj = None,Data = 'transform' ):
        if obj != None:
            PyObj = pm.PyNode(obj)
            if pm.attributeQuery('obj_type',node = PyObj,ex=1):
                    print ('Yes')
                    PyObj.obj_type.set(Data)
            else:
                dataAtr = pm.addAttr(PyObj,dt = 'string',ln = 'obj_type')
                PyObj.obj_type.set(Data)



