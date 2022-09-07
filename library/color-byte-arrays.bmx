SuperStrict

Const ALPHA:Int = 3
Const RED:Int = 2
Const GREEN:Int = 1
Const BLUE:Int = 0

Local color:Int = $123456	'ARGB
Local argb:Byte Ptr = Varptr color

Print Hex(argb[RED])
Print Hex(argb[GREEN])
Print Hex(argb[BLUE])
Print Hex(argb[ALPHA])

Print Hex( GetRed( color ) )

Local rr:Int = getbyte( color, RED )
Print Hex(rr)

Function GetRed:Byte( color:Int )
	Local argb:Byte Ptr = Varptr color
	Return argb[RED]
End Function

Function GetByte:Byte( color:Int, bit:Int )
	Local argb:Byte Ptr = Varptr color
	Return argb[bit]
End Function




