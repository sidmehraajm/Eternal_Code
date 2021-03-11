from pymel.core import *
import sys
import maya.cmds as cmds
sys.path.append('B:/Eternal_Code_Directory')

import Procs

def EternalCodeUiDef():
	if cmds.window( 'EternalCodeWin', exists = True):
		cmds .deleteUI ('EternalCodeWin' ,window=True)
	
	if cmds.windowPref( 'EternalCodeWin', exists = True):
		cmds.windowPref ('EternalCodeWin' ,r=True)
	
	cmds.window( 'EternalCodeWin', title=" ", iconName='Short Name' ,h=800,w=500, s = 0 )
	form = cmds.formLayout (numberOfDivisions=100,w = 300)
	backG = cmds.image(i = 'B:/Eternal_Code_Directory/Backup/Default_Icons/Back.png')
	searchImg = cmds.image(i = 'B:/Eternal_Code_Directory/Backup/Default_Icons/searchResult.png')
	AddImg = cmds.image(i = 'B:/Eternal_Code_Directory/Backup/Default_Icons/Store.png')
	Heading = cmds.text(l = '  ',align='center',fn = 'boldLabelFont',hl = True)
	search = cmds.textField('searchField',w = 200,h=22)
	searchButton = cmds.symbolButton(i = "B:/Eternal_Code_Directory/Backup/Default_Icons/Search box.png",c = 'Procs.searchScripts()')
	searchResult = cmds.textScrollList('searchResultList',h = 350,w = 210)
	
	AddToScript = cmds.symbolButton(ann = 'Add To Notepad',i="B:/Eternal_Code_Directory/Backup/Default_Icons/IDE.png",c = 'Procs.Notepad()')
	
	AuthorButton = cmds.symbolButton(i = "UVTkBtnHead.png",ann = 'Author: "Siddarth Mehra"',c = 'Procs.Procs.Author() ')
	sepratorone = cmds.textField( height=2,w= 280 )
	
	name = cmds.textField('NameScriptTxF',w = 180,h=25)
	
	Sendscript = cmds.scrollField('Codee',w = 180,h=330)
	radiocoll = cmds.radioCollection ()
	radioMel = cmds.radioButton ('MelRadio',label='Mel',sl = True )
	
	radioPython = cmds.radioButton( label='Python')
	SendSButton = cmds.symbolButton(ann = 'Store in Database',i="B:/Eternal_Code_Directory/Backup/Default_Icons/add.png",c = 'Procs.StoreCode()')
	cmds.formLayout( form, edit=True,
	
	attachForm=[
	
	(backG,'top',1),
	
	(searchImg,'top',220),
	(searchImg,'left',25),
	
	(AddImg,'top',270),
	(AddImg,'left',280),
	
	(search, 'top', 240),
	
	(search, 'left', 37),
	
	(searchButton, 'left', 218),
	
	
	(searchButton, 'top', 239),
	

	(Heading, 'left', 250),
	
	(Heading, 'top', 8),
	
	(searchResult, 'left',37),
	
	(name, 'top',305),
	
	(name, 'left',290),
	

	(AddToScript, 'left',50),
	
	(AuthorButton, 'bottom',10),
	
	

	
	(AuthorButton, 'right',10),

	(Sendscript, 'left', 290),
	
	(radioMel, 'top', 680),
	
	(radioMel, 'left', 300),
	
	(radioPython, 'top', 700),
	
	(radioPython, 'left', 300),
	
	(SendSButton, 'top', 685),
	
	(SendSButton, 'left', 360),
	
	

	
	
	
	
	], attachControl=[
	
	
	
	(searchResult, 'top',7,search),
	

	
	(AddToScript, 'top',15,searchResult),

	
	(Sendscript, 'top', 8,name),
	


	
	

	
	])
	cmds.showWindow ('EternalCodeWin')
	
EternalCodeUiDef()