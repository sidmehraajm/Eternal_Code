#skintransfer




import maya.cmds as cmds
import pymel.core as pm
import maya.mel as mel
def sknTransferUI():
            
    if pm.window('SkinTransfer', exists=True ):
        pm.deleteUI( 'SkinTransfer', window=True )
    if pm.windowPref('SkinTransfer', exists=True ):
        pm.windowPref( 'SkinTransfer', r=True )
    
    pm.window('SkinTransfer', title='Skin Transfer', iconName='Short Name', widthHeight=(336,150),s=0 )
    
    form = pm.formLayout(numberOfDivisions=100,bgc =[(.294),(.294),(.294)])
    source = pm.textField('sourcetxf',w=150,h=40)
    
    destination = pm.textScrollList('asd',h=40,w=150)
    
    sourceButton = pm.button(l='Source',w=150,bgc =[(.394),(.394),(.394)],c='sourceobjs()')
    destinationButton = pm.button(l='Destination',w=150,bgc =[(.394),(.394),(.394)],c='destinationObjs()')
    transfer = pm.button(l='Transfer',w=310,bgc =[(.2),(.5),(.4)],h=25,c='Transfer()')
    author = pm.symbolButton(i='UV_Freeze_Tool.png',c='author()')
    
    
    pm.formLayout(form,edit=True,attachForm=[
    (source,'top',10),
    (destination,'top',11),
    (sourceButton,'top',60),
    (destinationButton,'top',60),
    (transfer,'top',91),
    (author,'top',120),
    
    
    
    (source,'left',12),
    (destination,'left',12),
    (sourceButton,'left',12),
    (destinationButton,'left',12),
    (transfer,'left',12),
    (author,'left',302),
    
            
            
            
            	
    
    
    
    
    
    
    ],
    attachControl=[
    
    (destination, 'left', 10, source), 
    (sourceButton, 'bottom', 20, source), 
    (destinationButton, 'left', 10, sourceButton), 
    
    
    
    
        	
        	
    
    ]
    
    
    
    
    
    
    
    )
            
            
            
            
    pm.showWindow('SkinTransfer')
        
        
objlst=[]    
sourceobjctlst=[]
def sourceobjs():
    print 'f'
    sel = pm.ls(sl=True)
    pm.textField('sourcetxf',e=True,tx=str(sel[0]),ed=0)
    sourceobjctlst.append(sel[0])
    
    
def destinationObjs():
    pm.textScrollList('asd',e=True,ra=True)
    
    destsel = pm.ls(sl=True)
    for i in destsel:
        pm.textScrollList('asd',e=True,a=i)
        objlst.append(i)
        
    
    

    
def Transfer():
    pm.select(cl=True)
    sel = str(sourceobjctlst[0])
    
    his = pm.listHistory(sel)
    a = pm.ls(his,type = 'skinCluster')[0]
    infJnts=pm.skinCluster(a,q=True,wi=True)
    pm.select(infJnts,r=True)
    for i in objlst:
        try:
            pm.skinCluster(i,e=True,ub=True)
        except:
            
            pass
            
        b = pm.skinCluster(infJnts,i,mi=5)
        pm.select(sel,i)
        mel.eval("copySkinWeights  -noMirror -surfaceAssociation closestPoint -influenceAssociation closestJoint -normalize;")
        pm.select(cl=True)
        sknTransferUI()
        
    

def author():
    pm.launch(web='https://www.facebook.com/sidmehraajm/') 
    
    
    
sknTransferUI()
