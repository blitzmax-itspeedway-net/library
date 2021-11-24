#include "time.h"
#include <sys/time.h>

long MicroSecs(void) {
	struct timeval tv;
	gettimeofday( &tv, NULL );
	return (( (long)tv.tv_sec )*1000 )+( tv.tv_usec/1000 );
	/*return (( (long)tv.tv_sec )*1000 )*/;
}

double Milli(void) {
	struct timeval tv;
	gettimeofday( &tv, NULL );
	return (tv.tv_sec+(double)tv.tv_usec/1000000.0);
}
