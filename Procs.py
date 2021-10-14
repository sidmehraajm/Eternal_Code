from __future__ import print_function
from pymel.core import *
import sys
import maya.cmds as cmds
import maya.mel as mel
def searchScripts():
	searchTxt = cmds.textField('searchField',q = True,tx = True)
	print ( 'Searching for Scripts  ' + searchTxt)
	cmds.textScrollList('searchResultList',ra = True,e=True)
	flist = cmds.getFileList( folder= "B:/Eternal_Code_Directory/Code_Search_Index", filespec=('*'+searchTxt+'*') )
	for i in flist:
		cmds.textScrollList('searchResultList',e = True,a = i)


def StoreCode():
    
    NewCodeName = cmds.textField('NameScriptTxF' ,q = True,tx = True) 
    Ncode = cmds.scrollField('Codee',q= True,tx = True)
    NewCode=Ncode.encode('utf-8').strip()
    melRadio = cmds.radioButton('MelRadio',q= True,sl = True )
    
    if melRadio==True:
    	scriptType = '.mel'
    else:
    	scriptType = '.py'
    
    
    filename = ("B:/Eternal_Code_Directory/Code_Search_Index/"+NewCodeName+scriptType) 
    fileWrite = open(filename,"w")
    fileWrite.write(NewCodeName+scriptType)
    fileWrite.close()
    fileCode = ("B:/Eternal_Code_Directory/Eternal_Code/"+NewCodeName+scriptType)
    
    
    
    fileWriteCode = open (fileCode,"w")
    fileWriteCode.write(Ncode)
    fileWriteCode.close()
    
    cmds.textField('NameScriptTxF' ,e = True,tx = '') 
    cmds.scrollField('Codee',e= True,tx = '')


def RunCode():
	SelectedSearch = cmds.textScrollList('searchResultList',q=True,si = True)
	seriptPathDir = ('B:/Eternal_Code_Directory/Eternal_Code/')
	sys.path.append('B:/Eternal_Code_Directory/Eternal_Code/')
	scriptName = SelectedSearch[0].split('.')
	if scriptName[1]=='mel1':
		print ("It's Mel")
		mel.eval("source" + '"B:/Eternal_Code_Directory/Eternal_Code/'+ SelectedSearch[0]+'"')
	else:
		print ("It's python")
		ab = scriptName[0]
		s = ab
		try:
			imp (s)
		except:
			re(s)

def imp(s):
	mel.eval (python ("import "+ s))
	mel.eval (python ("reload( "+s+")"))

def re(s):
	mel.eval (python ("reload( "+s+")"))

def Notepad():

	tmpDir = cmds.internalVar (utd = True)
	SelectedSearch = cmds.textScrollList('searchResultList',q=True,si = True)
	scriptPathDir = ('B:/Eternal_Code_Directory/Eternal_Code/')
	sys.path.append('B:/Eternal_Code_Directory/Eternal_Code/')
	path = r'B:/Eternal_Code_Directory/Eternal_Code/'+ SelectedSearch[0]+''
	EternalCodeTempFolder = 'Eternal_Code Temp'
	tmpDir = cmds.internalVar (utd = True)
	Createpath = os.path. join (tmpDir,EternalCodeTempFolder)
	ChkDir = os.path.exists (Createpath)
	if (ChkDir==True):
		print ('Path exists')
	
	else:
		os .makedirs (Createpath)
	
	ndir = (Createpath+'/'+SelectedSearch [0] )
	cmds.sysFile(path,copy = ndir)
	os.startfile (ndir)
