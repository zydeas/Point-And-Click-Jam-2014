///cmd_list_add(command,id,data,...)

//DATA FORMAT:
//"tag:data","tag:data","tag:data"

var args;
args[15] = NULL;

for(var i = 0;i<16;i++)
{
    if i < argument_count
    {
        args[i] = argument[i];
    }
    else
    {
        args[i] = NULL;
    }
}


var data = sds_local_map_create();

var keys,values;
keys[0]=NULL;
values[0]=NULL;

for(var i=2;i<16;i++)
{
    if !is_string(args[i]) break;
    
    if string_pos(":",args[i]) = 0 break;
    else
    {
        var key, value;
        key = string_copy(args[i],1,string_pos(":",args[i])-1);
        value = string_copy(args[i],string_pos(":",args[i])+1,string_length(args[i]));
        
        show_debug_message(string(i)+": "+string(key)+" : "+string(value))
        
        ds_map_add(data,key,value);
    }
}

var map = sds_local_map_create();

ds_map_add(map,"command",args[0]);
ds_map_add(map,"data",data);

show_debug_message("Added command: "+string(args[0]))
ds_list_add(cmd_list,map);
