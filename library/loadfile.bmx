
Function LoadFile:String( filename:String )
    Local file:TStream = ReadStream( filename )
    If not file ; Return "" 
    Local content:String
    'debuglog "- File Size: "+file.size()+" bytes"
    content = ReadString( file, file.size() )
    CloseStream file
    return content
End Function
