/// point_in_poly(point_x, point_y, array)

var px = argument0;
var py = argument1;
var poly = argument2;
var dots = array_length_1d(poly);

var result = 1;

for (var i=0; i<dots; i+=2)
{
    var x1 = poly[i];
    var y1 = poly[i+1];
    if i < dots - 2
    {
        var x2 = poly[i+2];
        var y2 = poly[i+3];
    }
    else
    {
        var x2 = poly[0];
        var y2 = poly[1];
    }
    result *= point_on_line(x1, y1, x2, y2, px, py);
};

if result < 0 return true;

return false;