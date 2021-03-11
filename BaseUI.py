import maya.cmds as cmds
def UI():
    if cmds.window('ECode', exists=True ):
        cmds.deleteUI( 'ECode', window=True )
    if cmds.windowPref('ECode', exists=True ):
        cmds.windowPref( 'ECode', r=True )
        
        cmds.window('ECode', title='Example', widthHeight=(300, 600) )
    
        cmds.columnLayout()
        
        
        cmds.scrollField(w=300,h=800)
        cmds.showWindow('ECode')
    
    
    
UI()