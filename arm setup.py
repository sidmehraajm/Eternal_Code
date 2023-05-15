import pymel.core as pm
class tf_class(object):
    def create_transform(self,Trname = '_empty_grp',parent= '',Data = '',typ = 'transform',root_joint = None,inheritTransform = 1):
        """
        create_transform
        Args:
            Trname: Name of the transform : String
            parent: Parent of the given transform : Optional arg 
            Data: Data to put in transfroms data attribute : String

        Returns:
            Returns Transform Name

        Raises:
            Raises Runtime error if parent string is given and that is not found in the scene

        example: 
            var = tf_class()
            var.create_transform(Trname = 'Test',parent= 'rig_global',Data = 'Test Data')
        """
        if typ == 'joint':
            trf = pm.createNode('joint', n = Trname.replace('grp','jnt'))
            dataAtr = pm.addAttr(trf,dt = 'string',ln = 'data')
            trf.data.set(Data)
            trf.jox.setKeyable(1)
            trf.joy.setKeyable(1)
            trf.joz.setKeyable(1)
            root_attr = pm.addAttr(trf,dt = 'string',ln = 'rootJoint')
            if root_joint:
                trf.rootJoint.set(root_joint)
                
        else:

            trf = pm.createNode('transform', n = Trname)
            dataAtr = pm.addAttr(trf,dt = 'string',ln = 'data')
            trf.data.set(Data)

        if parent !='':
            try:
                pm.parent(trf,parent)
            except:
                raise RuntimeError('Parent not found')
        else:
            pass

        if inheritTransform ==0:
            trf.inheritsTransform.set(0)


        return trf


tr = tf_class()
jnt = tr.create_transform(typ = 'joint')




























