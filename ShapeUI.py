
import maya.cmds as cmds

class ShapeUI(object):   # remember to inherit from object in python 2 classes!
    WINDOW_NAME = "myWindowID"   # put this up here so all copies of this class share it

    def __init__(self):


        # you need to remember the name of the object you want to work on
        self.active_shape = None
        self.layout()

    def layout(self):

        if cmds.window(self.WINDOW_NAME, exists=True):
            cmds.deleteUI(self.WINDOW_NAME)
        cmds.window(self.WINDOW_NAME, title="User Interface", resizeToFitChildren=True)
        cmds.columnLayout(adjustableColumn=True)

        cmds.button(label="Sphere", command=self.mySphere)
        cmds.button(label="Cube", command=self.myCube)
        cmds.button(label = 'delete active', command = self.myDelete)
        cmds.separator(h=20, style="none")

        # you need to remember the ids of the sliders so you can query their values
        self.TranslateX = cmds.intSliderGrp(
            label="Translate X ", field=True, min=1, max=100, value=0, cc=self.move_active)
        self.TranslateY = cmds.intSliderGrp(
            label="Translate Y ", field=True, min=1, max=100, value=0, cc=self.move_active)
        self.TranslateZ = cmds.intSliderGrp(
            label="Translate Z ", field=True, min=1, max=100, value=0, cc=self.move_active)

        cmds.showWindow(self.WINDOW_NAME)

    def mySphere(self, *_):  # _ is python slang for "I will ignore this argument"
        self.active_shape = cmds.polySphere()[0]
        # for good measure, change the window title to the name of the active object
        cmds.window(self.WINDOW_NAME, e=true, title = self.active_shape)

    def myCube(self, *_):
        self.active_shape = cmds.polyCube()[0]
        cmds.window(self.WINDOW_NAME, e=true, title = self.active_shape)

    def myDelete(self, *_):
        if self.active_shape:
            cmds.delete(self.active_shape)
            self.active_shape = None
            cmds.window(self.WINDOW_NAME, e=true, title = "nothing selected")

    def move_active(self, *_):
        # you could do separate functions for each slider,
        # but in this case it's easler to do the same one everwhere
        # using the stored widget names and the stored shape
        if self.active_shape:
            tx = cmds.intSliderGrp(self.TranslateX, q=True, v=True)
            ty = cmds.intSliderGrp(self.TranslateY, q=True, v=True)
            tz = cmds.intSliderGrp(self.TranslateZ, q=True, v=True)

            cmds.xform(self.active_shape, t=(tx, ty, tz))
        else:
            print "create a shape before adjusting sliders"


ui=ShapeUI()