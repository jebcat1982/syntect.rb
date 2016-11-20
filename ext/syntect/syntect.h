#ifndef SYNTECT_RB
#define SYNTECT_RB

#include "ruby.h"

#define CSTR2SYM(s) (ID2SYM(rb_intern((s))))

void Init_syntect();

#endif
