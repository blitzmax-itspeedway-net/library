'   Sleeping Window
'   (c) Copyright Si Dunford, MMM 2022, All Rights Reserved. 
'   VERSION: 1.0

'   CHANGES:
'   25 AUG 2022  Initial Creation
'

SuperStrict
Framework sdl.gl2sdlmax2d
Import brl.eventqueue

Global Paused:Int = False

Function SDLEventHandler:Int( data:Object, event:Int )
	Select event
		Case SDL_APP_WILLENTERBACKGROUND
			paused = True
			Return False
		Case SDL_APP_DIDENTERBACKGROUND
		Case SDL_APP_WILLENTERFOREGROUND
		Case SDL_APP_DIDENTERFOREGROUND
			paused = False
			Return False
	End Select
	Return True
End Function

SetEventFilterCallback( SDLEventHandler )
Graphics(800, 600)

Repeat

	While paused
		Delay 500
		PollEvent
	Wend

    Cls
	
    Flip
	Delay 1
Until KeyHit(KEY_ESCAPE) Or AppTerminate()




