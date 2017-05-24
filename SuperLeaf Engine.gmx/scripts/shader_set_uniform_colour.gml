///shader_set_uniform_colour(colour,alpha)

/*
**  Usage:
**      shader_set_uniform_colour(colour,alpha);
**
**  Arguments:
**      colour:      Standard GM color value.
**      alpha:       Given in [0,1] range.
*/

return shader_set_uniform_f(argument0,color_get_red(argument1)/255,color_get_green(argument1)/255,color_get_blue(argument1)/255,argument2);
