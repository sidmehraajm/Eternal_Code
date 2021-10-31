import maya.cmds as cmds
def UI():
    if cmds.window('Tool', exists=True ):
        cmds.deleteUI( 'Tool', window=True )
    if cmds.windowPref('Tool', exists=True ):
        cmds.windowPref( 'Tool', r=True )
        
        cmds.window('Tool', title='Example', widthHeight=(300, 600) )
    
        cmds.columnLayout()
        
        
        cmds.scrollField(w=300,h=800)
        cmds.showWindow('Tool')
    
UI()