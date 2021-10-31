import pymel.core as pm
from maya.api.OpenMaya import MTransformationMatrix, MGlobal, MSelectionList, MFnDagNode, MMatrix, MFnTransform



sel = MGlobal.getActiveSelectionList()  # selection
srcDagpath = sel.getDependNode(0)          # first node
srctransform_node  = MFnTransform(tgtDagpath) # MFnTransform
srcBaseMtx= srctransform_node.transformation().asMatrix()  # matrix

tgtDagpath = sel.getDependNode(1)          # first node
transform_node  = MFnTransform(tgtDagpath) # MFnTransform
tgttransform_node  = MFnTransform(tgtDagpath) # MFnTransform
tgtBaseMtx= tgttransform_node.transformation().asMatrix()  # matrix

src = MMatrix(tgtBaseMtx)
invMtx = MMatrix.inverse(src)


a = MFnDagNode().create('transform')
mtx = MTransformationMatrix(baseTgtPosMtx)

baseToTgtPosMtx = tgtBaseMtx*invMtx





tm = om.MTransformationMatrix()
tm.setTranslation(om.MVector(1,5, 3), om.MSpace.kObject)
mat = tm.asMatrix()

node = cmds.createNode("transform")

mlist = om.MSelectionList()
mlist.add(node)
mobj = mlist.getDependNode(0)


mattr = om.MFnMatrixAttribute()
attr = mattr.create("myMatrix", "mm")
mattr.readable = True
mattr.writable = True
mattr.storable = True
fn = om.MFnDependencyNode(mobj)
fn.addAttribute(attr)

pmNode = pm.PyNode(node)
pmNode.myMatrix.set(mat)


