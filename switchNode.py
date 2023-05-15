import sys
import maya.OpenMaya as om
import maya.OpenMayaMPx as omMPx

kcompUtilNodeTypeName = "switchNode"
kcompUtilNodeId = om.MTypeId(0x87025)

class switchNode(omMPx.MPxNode):

    inputs = om.MObject()
    output = om.MObject()
 
    def __init__(self):
        omMPx.MPxNode.__init__(self)
 
    def compute(self, plug, data):
        if (plug == switchNode.output) and plug.isElement():
            # Get output handle
            output_handle = data.outputArrayValue(switchNode.output)
            # Get the input handle
            in_val = data.inputValue(switchNode.inputs).asInt()
            # Get the element index
            index = plug.logicalIndex()
            out_val = 0
            if index == in_val:
                out_val = 1
            # Position the arrays at the correct element.
            output_handle.jumpToElement(index)
            # Copy the index to input comparison result to the output element.
            output_handle.outputValue().setFloat(out_val)

        else:
            return om.kUnknownParameter

def nodeCreator():
 
    return omMPx.asMPxPtr(switchNode())
 
def nodeInitializer():
 
    nattr = om.MFnNumericAttribute()
    switchNode.inputs = nattr.create("inputs", "in", om.MFnNumericData.kInt, 0)
    nattr.setStorable(1)
    switchNode.addAttribute(switchNode.inputs)

    nattr = om.MFnNumericAttribute()
    switchNode.output = nattr.create("output", "out", om.MFnNumericData.kInt, 0)
    nattr.setArray(1)
    nattr.setStorable(1)
    nattr.setWritable(1)
    switchNode.addAttribute(switchNode.output)
 
    switchNode.attributeAffects(switchNode.inputs, switchNode.output)
 
def initializePlugin(mobject):
 
    mplugin = omMPx.MFnPlugin(mobject)
 
    try:
        mplugin.registerNode(kcompUtilNodeTypeName, kcompUtilNodeId, nodeCreator, nodeInitializer)
 
    except:
        sys.stderr.write("Failed to register node: %s" % kcompUtilNodeTypeName)
        raise
 
def uninitializePlugin(mobject):
 
    mplugin = omMPx.MFnPlugin(mobject)
 
    try:
        mplugin.deregisterNode(kcompUtilNodeId)
 
    except:
        sys.stderr.write("Failed to deregister node: %s" % kcompUtilNodeTypeName)
        raise
