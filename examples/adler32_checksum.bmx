SuperStrict

'	EXAMPLE
'   (c) Copyright Si Dunford, June 2021, All Right Reserved
'	Showing how to use the Adler32_Checksum() function

Include "../library/functions.bmx"

Local data:String = "Wikipedia"
Local start:Int, finish:Int

' Generate HUGE ASCII document
'For Local j:Int = 0 Until 65535
'	data :+ Chr( Rand(Asc(" "),Asc("z") ) )
'Next

start = MilliSecs()
Local X:Int = Adler32_Checksum( data )
finish = MilliSecs()

Print( "Time:     "+(finish-start) )
Print( "Checksum: "+ Hex(X) )




