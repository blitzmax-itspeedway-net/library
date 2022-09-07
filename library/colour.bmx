

Function rgb:int(r:byte, g:byte, b:byte) ; Return $ff000000 | (r Shl 16) | (g Shl 8) | b ; End Function
Function rgba:int(r:byte, g:byte, b:byte, a:byte=255) ; Return (a Shl 24) | (r Shl 16) | (g Shl 8) | b ; End Function
Function argb:int(a:byte, r:byte, g:byte, b:byte) ; Return (a Shl 24) | (r Shl 16) | (g Shl 8) | b ; End Function

Function alpha:int( argb:int );  Return (argb Shr 24) & $ff; End Function
Function red:int( argb:int);     Return (argb Shr 16) & $ff; End Function
Function green:int( argb:int );  Return (argb Shr 8) & $ff;  End Function
Function blue:int( argb:int );   Return (argb & $ff);        End Function

Function greyscale:Int( color:Int )
    Local r:Byte = red( color )
    Local g:Byte = green( color )
    Local b:Byte = blue( color )
    Local grey:Byte = Byte( (r+g+b)/3 )
    Return rgb( grey, grey, grey )
End Function 

'Local colour:Int = rgb( $aa, $bb, $cc )
'Print Hex( colour )
'Print "RED:       "+Hex(red(colour))+","+red(colour)
'Print "GREEN:     "+Hex(green(colour))+","+green(colour)
'Print "BLUE:      "+Hex(blue(colour))+","+blue(colour)
'Print "GREYSCALE: "+Hex(greyscale(colour))
