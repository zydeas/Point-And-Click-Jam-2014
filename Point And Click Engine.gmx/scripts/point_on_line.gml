/// point_on_line(ax, ay, bx, by, px, py)
// function return: "0" - point on the line, "1" - no collision, "-1" - collision

var s_ax = argument0;
var s_ay = argument1;
var s_bx = argument2;
var s_by = argument3;
var s_mx = argument4;
var s_my = argument5;

var ax = s_ax - s_mx;
var ay = s_ay - s_my;
var bx = s_bx - s_mx;
var by = s_by - s_my;

var s = sign(ax * by - ay * bx);    
if (s == 0 && (ay == 0 || by == 0) && ax * bx <= 0)
    return 0;  
if ((ay < 0) ^ (by < 0))
{
    if (by < 0)
        return s;
    return -s;
}      

return 1;