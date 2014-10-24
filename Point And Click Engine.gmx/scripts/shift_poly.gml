/// shift_poly(array, delta_x, delta_y)

var sz = array_length_1d(argument0);

for (var i=0; i<sz; i+=2)
{
    argument0[@ i] += argument1;
    argument0[@ i+1] += argument2;
}

// print new values to the debug console
// you can delete this line if your no need it
show_debug_message(argument0);