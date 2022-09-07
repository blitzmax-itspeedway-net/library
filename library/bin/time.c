/*	Copyright (c) Si Dunford, 2021
	13 JUN 2022  GWRon  Updated long to BBLONG
*/

#include "time.h"
#include <sys/time.h>
#include <brl.mod/blitz.mod/blitz.h> 	/*GWRon 13 JUN 2022*/

BBLONG MicroSecs(void) {
	struct timeval tv;
	gettimeofday( &tv, NULL );
	return (( (BBLONG)tv.tv_sec )*1000 )+( tv.tv_usec/1000 );
	/*return (( (long)tv.tv_sec )*1000 )*/;
}

double Milli(void) {
	struct timeval tv;
	gettimeofday( &tv, NULL );
	return (tv.tv_sec+(double)tv.tv_usec/1000000.0);
}
