import pymel.core as pm
from pymel.core import *    

if window('TheRiggersToolkitX',ex=True):
	deleteUI('TheRiggersToolkitX')
if window('ExamplaeWindow',ex=True):
	deleteUI('ExamplaeWindow')

if pm.windowPref('TheRiggersToolkitX', exists=True ):
   pm.windowPref( 'TheRiggersToolkitX', r=1 )
	 
template = uiTemplate('TheRiggersToolkitXtemplate', force=True)
template.define(formLayout)

wind = pm.window( 'TheRiggersToolkitX',t = 'RigToolkitX',w=300,h=330,s=1,bgc = [(.17),(.18),(.19)])
Tab = tabLayout('Tabs',p='TheRiggersToolkitX',tc =1,stb=1,snt=1,ntc = 'NewTab()')

out = pm.formLayout('Outliner',p='Tabs',w=300,h=330)
outpanel = pm.outlinerPanel(p = 'Outliner')
outliner = pm.outlinerPanel(outpanel, query=True,outlinerEditor=True)
pm.outlinerEditor( outliner, edit=True, mainListConnection='worldList', selectionConnection='modelList', showShapes=False, showReferenceNodes=False, showReferenceMembers=False, showAttributes=False, showConnected=False, showAnimCurvesOnly=False, autoExpand=False, showDagOnly=True, ignoreDagHierarchy=False, expandConnections=False, showNamespace=True, showCompounds=True, showNumericAttrsOnly=False, highlightActive=True, autoSelectNewObjects=False, doNotSelectNewObjects=False, transmitFilters=False, showSetMembers=True, setFilter='defaultSetFilter' )
pm.formLayout('Outliner',e =1,af=[(outpanel,'top',0),(outpanel,'left',0),(outpanel,'right',0),(outpanel,'bottom',0)])

channelbox = pm.channelBox('ChannelBox',p = 'Tabs',ac = [(.8),(.9),(1)],bc = [(.3),(.3),(.3)],ekf =1,fw=150,hlc=[(.2),(.6),(.4)],hol =1,ln=1,nn=0,m=1,pre = 5,)
ScriptEdt = pm.scrollLayout('MelCmd',p='Tabs')
pmhll = pm.cmdShell(p='MelCmd',w=290,h=260 , bgc = [(.17),(.18),(.19)])
clearBtn = pm.symbolButton('minusBtn',p = 'MelCmd',i = 'clearAll.png',w = 285,h=43,ebg =1 , bgc = [(.1),(.11),(.11)],en = 1,command=('cmds.cmdShell(\"' + cmdShll + '\", edit=True, clear=True)' ))

pm.showWindow('TheRiggersToolkitX')
