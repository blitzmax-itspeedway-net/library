SuperStrict

'	EXAMPLE
'   (c) Copyright Si Dunford, June 2021, All Right Reserved

'	Showing how to use the MicroSecs() and Milli() functions

' Run this a few times and compare the START/END times.
' You will find that the standard MilliSecs() does not have the
' granularity to identify runtime, but Milli() does.

Import "../library/time.bmx"

Local start:Double = Milli()

Print "START:"
Print "  MilliSecs(): "+MilliSecs() 
Print "  MicroSecs(): "+MicroSecs() 
Print "  Milli():     "+Milli() 

Print "STOP:"
Print "  MilliSecs(): "+MilliSecs() 
Print "  MicroSecs(): "+MicroSecs() 
Print "  Milli():     "+Milli() 

Local finish:Double = Milli()

' Calculate runtime
Local runtime:Double = (finish-start) 	' Milliseconds
Local micro:Int      = runtime*1000		' Microseconds
Local nano:Int       = runtime*1000000	' Nanoseconds

Print "~nRuntime: "+nano+" nanoseconds"



