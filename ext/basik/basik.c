#include <ruby.h>
#include <stdio.h>


VALUE native_greeting (VALUE rb_self)
{
	return rb_str_new2 ("hello from native greeting");
}


void Init_basik (void)
{
	printf ("Init_basik()\n");

	VALUE Basik      = rb_define_module      ("Basik");
	VALUE BundledGem = rb_define_class_under (Basik, "BundledGem", rb_cObject);

	rb_define_method (BundledGem, "show_cext_greeting", native_greeting, 0);
}
