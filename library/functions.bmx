
'	FUNCTION LIBRARY
'   (c) Copyright Si Dunford, June 2021, All Right Reserved

' Implementation of the Adler-32 algorithm
' https://en.wikipedia.org/wiki/Adler-32
Function Adler32_Checksum:Int( data:String )
	Local A:Int = 1, B:Int = 0, ch:Byte, n:ULong
	For n = 0 Until Len( data )
		ch = data[n]
		A = (A+ch) Mod $FFFF
		B = (B+A) Mod $FFFF	
	Next
	Return B Shl 16 | A
End Function

' C Compatible emod function
Function emod:Int( dividend:Int, divisor:Int )
	If dividend>=0 Return dividend Mod divisor
	Return ( dividend Mod divisor + divisor ) Mod divisor
End Function

' Identify if the given value is Even (or Odd)
Function isEven:Int( x:Int )
	Return (x & $00000001 = 0 )
End Function

' Identify if the given value is Odd (or Even)
Function isOdd:Int( x:Int )
	Return Not (x & $00000001 = 0 )
End Function