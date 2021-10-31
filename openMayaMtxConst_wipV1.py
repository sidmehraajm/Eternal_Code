import pymel.core as pm
from maya.api.OpenMaya import MTransformationMatrix, MGlobal, MSelectionList, MFnDagNode, MMatrix, MFnTransform, MFnMatrixAttribute
import maya.api.OpenMaya as om

dgn = MFnDagNode()
mobj = om.MObject()
m_dagPath   = om.MDagPath()
mattr = MFnMatrixAttribute()


sel = MGlobal.getActiveSelectionList()  # selection
srcDagpath = sel.getDependNode(0)          # first node
srctransform_node  = MFnTransform(srcDagpath) # MFnTransform
srcBaseMtx= srctransform_node.transformation().asMatrix()  # matrix
srcName = (dgn.setObject(sel.getDagPath(0))).name()#dagname 
srcPym = pm.PyNode(srcName)#dagPynode

tgtDagpath = sel.getDependNode(1)          # first node
tgttransform_node  = MFnTransform(tgtDagpath) # MFnTransform
tgtBaseMtx= tgttransform_node.transformation().asMatrix()  # matrix
tgtName = (dgn.setObject(sel.getDagPath(1))).name()#dagname    
tgtPym = pm.PyNode(tgtName)#dagPynode


srcBattr = mattr.create("srcBaseMtx", "mm")#createAttr
srctransform_node.addAttribute(srcBattr)#addAttr
srcPym.srcBaseMtx.set(srcBaseMtx)#setAttronPym

tgtBAttr = mattr.create("tgtBaseMtx", "mm")#createAttr
srctransform_node.addAttribute(tgtBAttr)#addAttr
srcPym.tgtBaseMtx.set(tgtBaseMtx)#setAttronPym


