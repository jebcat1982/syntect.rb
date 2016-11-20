#include <syntect.h>

VALUE mSTree;

__attribute__((visibility("default"))) void Init_syntect() {
  VALUE module;
  module = rb_define_module("Syntect");
}
