import maya.cmds as cmds
import sys
def c():
    c=cmds.promptDialog(
    		title='ConnectAttrs',
    		message='t for trans,r for rotate,s for scale,a for all',
    		button=['Connect', "Don't Connect"],
    		defaultButton='Connect',
    		cancelButton="Don't Connect",
    		dismissString='Bitch')
    		
    
    if c=='Connect':
        
        text = cmds.promptDialog(query=True, text=True)
        a = str(text)
        sel = cmds.ls(sl=True)
        if a == 't':
            cmds.connectAttr((str(sel[0])+'.'+'t'),(str(sel[1])+'.'+'t'))
            print 'Connected Translation'
        elif a == 'r':
            cmds.connectAttr((str(sel[0])+'.'+'r'),(str(sel[1])+'.'+'r'))
            print 'Connected Rot'
        elif a == 's':
            cmds.connectAttr((str(sel[0])+'.'+'s'),(str(sel[1])+'.'+'s'))
            print 'Connected Scale'
        elif a == 'a':
            cmds.connectAttr((str(sel[0])+'.'+'s'),(str(sel[1])+'.'+'s'))
            cmds.connectAttr((str(sel[0])+'.'+'t'),(str(sel[1])+'.'+'t'))
            cmds.connectAttr((str(sel[0])+'.'+'r'),(str(sel[1])+'.'+'r'))
            
            print 'Connected All'
        

        
    elif c =="Don't Connect":
       
        pass
        sys.stdout.write('Nothing connected')