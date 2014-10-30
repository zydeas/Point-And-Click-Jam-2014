///cmd_list_enact(command map)
//Processes the command given, and enacts the command, along with the relevant data.

var cmd_temp = argument0;

if !ds_exists(cmd_temp,ds_type_map)
{
    show_debug_message("cmd_command_process: Error: Map '"+string(cmd_temp)+"' does not exist: ");
    return false;
}
else
{
    var cmd = ds_map_find_value(cmd_temp,"command");
    var data = ds_map_find_value(cmd_temp,"data");
    
    if ds_exists(data,ds_type_map)
    {
        switch(cmd)
        {
        
            case cmd.setAnimation:
                
            break;
            
            case cmd.playAnimation:
            
            break;
            
            case cmd.setPathToXY:
                var path,startx,starty,endx,endy;
                if ds_map_exists(data,"path")
                {
                    path = real(data[? "path"])
                }
                else
                {
                    path = default_player_path;
                }
                
                startx = x;
                starty = y;
                
                if ds_map_exists(data,"endx")
                {   endx = real(data[? "endx"])   };
                else {  endx = x;}
                
                if ds_map_exists(data,"endy")
                {   endy = real(data[? "endy"])   };
                else {  endy = y;}
                
                calculate_walk_path(path,startx,starty,endx,endy);
            break;
            
            case cmd.startPath:
                path_end();
                var path,pathSpd;
                if ds_map_exists(data,"path") 
                {
                    if path_exists(real(data[? "path"]))
                    {
                        path = real(data[? "path"]);
                    }
                    else
                    {
                        path = default_player_path;
                    }
                }
                else
                {
                    path = default_player_path;
                }
                
                if ds_map_exists(data,"speed")
                {   pathSpd = real(data[? "speed"])   };
                else {  pathSpd = 1;}
                
                path_start(path,pathSpd,0,1);
                
                show_debug_message("Command: startPath: "+string(path_get_name(path))+", Speed: "+string(pathSpd));
            break;
            
            case cmd.wait:
            
            break;
            
            case cmd.createInstance:
            
            break;
        }
        
        return true;
    }
    else
    {
        show_debug_message("cmd_command_process: Error: Data Map '"+string(data)+"' does not exist: ");
        return false;
    }
}
