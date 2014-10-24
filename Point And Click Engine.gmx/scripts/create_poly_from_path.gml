/// create_poly_from_path(path, [precise])

var result;
var path = argument[0];

if path_get_kind(path)
{
    if argument_count < 2
        var cnt = path_get_length(path) div 5;
    else
        var cnt = argument[1];

    var step = 1/cnt;
    for (var i=0; i<cnt; i++)
    {
        result[i*2] = path_get_x(path, step*i);
        result[i*2+1] = path_get_y(path, step*i);
    }
}
else
{
    var cnt = path_get_number(path);
    for (var i=0; i<cnt; i++)
    {
        result[i*2] = path_get_point_x(path, i);
        result[i*2+1] = path_get_point_y(path, i);
    }
}

return result;