 #################################################################
######################    Mirror Objects   ########################
 #################################################################
#Author:Siddarth Mehra
#Email:siddarthmehraajm@gmail.com
#Mobile: +91-7728050400(Whatsapp)

import maya.cmds as cmds
import maya.mel as mel

#MirrorObjects
def MirrorBojs():
    
    
    
    slc = cmds.ls(sl=True)
    
    if (len(slc)==0):
        cmds.inViewMessage( amg='Please select something to <hl>Mirror</hl>.', pos='botCenter', fade=True)
        
        
    else:
        
        newObj = cmds.duplicate(slc,n=('Mirrored_'+str(slc[0])))
        newobjgrp = cmds.group(newObj,n=(str(slc[0])+'_MirrorGrp'))
        mel.eval("xform -os -piv 0 0 0;")
        cmds.scale( -1, 1, 1 )
        cmds.ungroup(newobjgrp)
        cmds.makeIdentity(newObj, apply=True, t=1, r=1, s=1 )
        cmds.select(newObj) 
        a=cmds.promptDialog(

    		title='Mirror',
    		message='If LT suffix exists type 1',
    		button=['Rename', "Don't Rename"],
    		defaultButton='Rename',
    		cancelButton="Don't Rename",
    		dismissString='Not Renaming')
    	if a == 'Rename':
    	    
    	    text = cmds.promptDialog(query=True, text=True)
            g = int(text)
        	
            try:
                mel.eval('searchReplaceNames"_LT" "_RT" "selected"')
            except:
                pass 
            try:
                mel.eval('searchReplaceNames"_lt" "_rt" "selected"')
                    
            except:
                    pass        
            
            try:
                mel.eval('searchReplaceNames"_L" "_R" "selected"')
                
            except:
                pass 
            try:
                mel.eval('searchReplaceNames"_Left" "_Right" "selected"')
                
            except:
                pass


            if g==1:
                    mel.eval('searchReplaceNames"Mirrored_" "" "selected"')
                    print 'removed mirrored names'
                    
            else:
                pass
        
        
        else:
            pass

    
    
    
    
    
    
    
    
    	
MirrorBojs()














