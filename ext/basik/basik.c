#include <ruby.h>
#include <stdio.h>


VALUE native_greeting (VALUE rb_self)
{
	printf ("hello from native greeting\n");
	
	return rb_self;
}


void Init_basik (void)
{
	printf ("Init_basik()\n");

	VALUE Basik      = rb_define_module      ("Basik");
	VALUE BundledGem = rb_define_class_under (Basik, "BundledGem", rb_cObject);

	rb_define_method (BundledGem, "show_cext_greeting", native_greeting, 0);
}
