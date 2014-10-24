/// draw_poly(x,y,array)

var res = argument2;
var sz = array_length_1d(res);

for (var i=0; i<sz; i+=2)
{
    var x1 = res[i];
    var y1 = res[i+1];
    if i < sz - 2
    {
        var x2 = res[i+2];
        var y2 = res[i+3];
    }
    else
    {
        var x2 = res[0];
        var y2 = res[1];
    }
    
    draw_line(x1+argument0, y1+argument1, x2+argument0, y2+argument1);
}
