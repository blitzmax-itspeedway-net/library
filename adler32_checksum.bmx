SuperStrict

' Implementation of the Adler-32 algorithm
' https://en.wikipedia.org/wiki/Adler-32

Local data:String = "Wikipedia"
Local CH:Byte
Local start:Int, finish:Int

' Generate HUGE ASCII document
'For Local j:Int = 0 Until 65535
'	data :+ Chr( Rand(Asc(" "),Asc("z") ) )
'Next



start = MilliSecs()
Local X:Int = Adler32_Checksum( data )
finish = MilliSecs()
Print( "Time: "+(finish-start) )
Print Hex(X)




