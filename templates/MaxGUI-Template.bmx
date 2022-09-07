'   MAX GUI TEMPLATE
'   (c) Copyright Si Dunford, MMM 2022, All Rights Reserved. 
'   VERSION: 1.0

'   CHANGES:
'   25 AUG 2022  Initial Creation
'

SuperStrict
Import MaxGUI.Drivers
Import brl.EventQueue

AppTitle = "Template"

Local flags:Int = WINDOW_TITLEBAR|WINDOW_MENU|WINDOW_STATUS|WINDOW_RESIZABLE
Global window:TGadget = CreateWindow( AppTitle, 100, 100, 300, 200, Null, flags )

Local filemenu:TGadget
Local editmenu:TGadget
Local helpmenu:TGadget

Const FILE_NEW:Int = 101
Const FILE_OPEN:Int = 102
Const FILE_SAVE:Int = 103
Const FILE_CLOSE:Int = 104
Const FILE_EXIT:Int = 105

Const EDIT_CUT:Int = 106
Const EDIT_COPY:Int = 107
Const EDIT_PASTE:Int = 108

Const HELP_ABOUT:Int = 109

filemenu=CreateMenu("&File",0,WindowMenu(window))
CreateMenu"&New",FILE_NEW,filemenu,KEY_N,MODIFIER_COMMAND
CreateMenu"&Open",FILE_OPEN,filemenu,KEY_O,MODIFIER_COMMAND
CreateMenu"&Close",FILE_CLOSE,filemenu,KEY_W,MODIFIER_COMMAND
CreateMenu"",0,filemenu
CreateMenu"&Save",FILE_SAVE,filemenu,KEY_S,MODIFIER_COMMAND
Local saves:TGadget = CreateMenu("Save More",0,filemenu)
CreateMenu"",0,filemenu
CreateMenu"E&xit",FILE_EXIT,filemenu,KEY_F4,MODIFIER_COMMAND

editmenu=CreateMenu("&Edit",0,WindowMenu(window))
CreateMenu "Cu&t",EDIT_CUT,editmenu,KEY_X,MODIFIER_COMMAND
CreateMenu "&Copy",EDIT_COPY,editmenu,KEY_C,MODIFIER_COMMAND
CreateMenu "&Paste",EDIT_PASTE,editmenu,KEY_V,MODIFIER_COMMAND

helpmenu=CreateMenu("&Help",0,WindowMenu(window))
CreateMenu "&About",HELP_ABOUT,helpmenu

CreateMenu("Option 1", 110,saves)
Local opt:TGadget = CreateMenu("Option 2", 111,saves)

UpdateWindowMenu window

If (FLAGS & WINDOW_STATUS) Then
	SetStatusText( window, "Left aligned~tCenter aligned~tRight aligned" )
EndIf

Repeat
	
	Select WaitEvent()
	Case EVENT_APPTERMINATE, EVENT_WINDOWCLOSE
		If Confirm("Are you sure?"); End
	Case EVENT_GADGETACTION
	Case EVENT_MENUACTION
		Select EventData()
		Case FILE_OPEN
			Local filter:String = "Image Files:png,jpg,bmp;Text Files:txt;All Files:*"
			Local filename:String = RequestFile( "Select graphic file to open",filter )
			If filename
				Print( filename + " opened" )
			End If
		Case FILE_EXIT
			If Confirm("Are you sure?"); End
		Case HELP_ABOUT
			Notify "MaxGUI Template~n(c) 2022, Si Dunford"
		Case 111
			CheckMenu(opt)
		End Select
	Default
		'Print CurrentEvent().toString()
	EndSelect
Forever




