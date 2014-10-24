///path_uncollide(path,collideObj)
var path,collideObj,px,py;

path = argument0;
collideObj = argument1;
px = 0;
py = 0;

var maxDist = 16;

for (var i=0; i < path_get_number(path); i++)
{
    px = path_get_point_x(path,i);
    py = path_get_point_y(path,i);
    
    if place_meeting(px,py,collideObj)
    {
        var obj = collision_ellipse(px-8,py-4,px+8,py+4,collideObj,true,true);
        var dir = point_direction(obj.x,obj.y,px,py);
        
        for(var j = 0;j<maxDist;j++)
        {
            if !place_meeting(px+lengthdir_x(j,dir),py+lengthdir_y(j,dir),collideObj)
            {
                px += lengthdir_x(j,dir);
                py += lengthdir_y(j,dir);
                path_change_point(path,i,px,py,100)
                break;
            }
        }
    }
}
