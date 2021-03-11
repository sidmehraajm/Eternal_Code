import maya.cmds as cmds
import sys
def l():
    c=cmds.promptDialog(
    		title='LockAttrs',
    		message='t for trans,r for rotate,s for scale,a for all',
    		button=['Lock', "Don't Lock"],
    		defaultButton='Lock',
    		cancelButton="Don't Lock",
    		dismissString='Bitch')
    		
    
    if c=='Lock':
        
        text = cmds.promptDialog(query=True, text=True)
        a = str(text)
        sel = cmds.ls(sl=True)
        if a == 't':
            cmds.setAttr((str(sel[0])+'.'+'t'),l=1)
            print 'Connected Translation'
        elif a == 'r':
            cmds.setAttr((str(sel[0])+'.'+'r'),l=1)
            print 'Connected Rot'
        elif a == 's':
            cmds.setAttr((str(sel[0])+'.'+'s'),l=1)
            print 'Connected Scale'
        elif a == 'a':
            cmds.setAttr((str(sel[0])+'.'+'s'),l=1)
            cmds.setAttr((str(sel[0])+'.'+'t'),l=1)
            cmds.setAttr((str(sel[0])+'.'+'r'),l=1)
            
            print 'Connected All'
        elif a == 'v':
            cmds.setAttr((str(sel[0])+'.'+'v'),l=1)
            print 'Connected vis'
            
        else:
            print 'Nothing selected'
            sys.stdout.write('Nothing selected')
            
            
            
            
        

        
    elif c =="Don't Lock":
       
        pass
        sys.stdout.write('Nothing Locked')
        
        
        
        
        
        
        
        
        
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
        else:
            print 'Nothing selected'
            sys.stdout.write('Nothing selected')
        

        
    elif c =="Don't Connect":
       
        pass
        sys.stdout.write('Nothing connected')