///draw_path_points(path)
if path_exists(argument0)
{
    draw_set_color(c_blue);
    for(var i=0; i<path_get_number(argument0);i++)
    {
        draw_circle(path_get_point_x(argument0,i),path_get_point_y(argument0,i),1,false)
    }
}
