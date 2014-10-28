///calculate_walk_path(path,start x,start y,end x,end y)

var targetx,targety;
    
targetx = (floor(argument3/MP_CELL_SIZE_X)*MP_CELL_SIZE_X)+(MP_CELL_SIZE_X/2);
targety = (floor(argument4/MP_CELL_SIZE_Y)*MP_CELL_SIZE_Y)+(MP_CELL_SIZE_Y/2);


if !collision_line(argument1,argument2,targetx,targety,o_solid,true,true)
{
    path_clear_points(argument0);
    path_add_point(argument0,argument1,argument2,100);
    path_add_point(argument0,targetx,targety,100);
    path_set_kind(argument0,1);
    return true;
}
else
{
    path_clear_points(argument0);
    if mp_grid_path(global.roomGrids[? room],argument0,argument1,argument2,targetx,targety,true)
    {
        path_set_kind(tempPath,1);
        return true;
    }
    else
    {
        return false;
    }
}
