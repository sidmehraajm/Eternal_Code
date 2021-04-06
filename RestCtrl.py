#################################################################
######################      Rest Ctrl      ########################
 #################################################################
#Author:Siddarth Mehra
#Email:siddarthmehraajm@gmail.com
#Mobile: +91-7728050400(Whatsapp)

#You can set this as Hotkey as 0 or something very useful to zeroout t s r on ctrls 
#change the prifix on line 11 accordingly like '*Ctrl' '*Ctl' '*etc'
#remove # from line 61 if you want to set scale to 1

import pymel.core as pm
try:
    sel = pm.ls(sl= 1)
    if len(sel)!=0:
        sel = pm.ls(sl= 1)
    else:
        sel=pm.ls('*Ctrl',an=True)
        
except:
    sel=pm.ls('*Ctrl',an=True)

    
for i in sel:
    try:
        pm.setAttr(i+'.translateX',0)
    except:
        pass
    try:
        pm.setAttr(i+'.translateY',0)
    except:
        pass
    
    try:
        pm.setAttr(i+'.translateZ',0)
    except:
        pass
    try:
        pm.setAttr(i+'.rotateX',0)
    except:
        pass
    
    try:
        pm.setAttr(i+'.rotateY',0)
    except:
        pass
    try:
        pm.setAttr(i+'.rotateZ',0)
    except:
        pass
    
    def sc():
        sel=pm.ls('*Ctrl',an=True)
        for i in sel:
                
            
                
            try:
                pm.setAttr(i+'.scaleX',1)
            except:
                pass
            try:
                pm.setAttr(i+'.scaleY',1)
            except:
                pass
            
            try:
                pm.setAttr(i+'.scaleZ',1)
            except:
                pass
    #sc()