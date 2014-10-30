///sds_gc_local_tick();
var o,map,ds,type;
for(var i=0;i<ds_list_size(global.sds_locals_reg);i++)
{
    o = ds_list_find_value(global.sds_locals_reg,i);
    if !instance_exists(o)
    {
        map = ds_map_find_value(global.sds_locals,o);
        
        for(var j=0;j<ds_list_size(map[? sdsLocals.sds_ds]);j++)
        {
            ds = ds_list_find_value(map[? sdsLocals.sds_ds],j);
            type = ds_map_find_value(map[? sdsLocals.sds_types],ds);
            switch type
            {
                case ds_type_list:
                    ds_list_destroy(ds);
                    show_debug_message(" -sds_l_list:"+string(ds))
                break;
                
                case ds_type_grid:
                    ds_grid_destroy(ds);
                    show_debug_message(" -sds_l_grid:"+string(ds))
                break;
                
                case ds_type_map:
                    ds_map_destroy(ds);
                    show_debug_message(" -sds_l_map:"+string(ds))
                break;
                
                case ds_type_stack:
                    ds_stack_destroy(ds);
                    show_debug_message(" -sds_l_stack:"+string(ds))
                break;
                
                case ds_type_queue:
                    ds_queue_destroy(ds);
                    show_debug_message(" -sds_l_queue:"+string(ds))
                break;
                
                case ds_type_priority:
                    ds_priority_destroy(ds);
                    show_debug_message(" -sds_l_priority:"+string(ds))
                break;
            }
        }
        ds_list_destroy(map[? sdsLocals.sds_ds]);
        show_debug_message(map);
        ds_map_destroy(ds_map_find_value(map,sdsLocals.sds_types));
        ds_map_destroy(map);
        
        ds_list_delete(global.sds_locals_reg,i);
        ds_map_delete(global.sds_locals,id);
    }
}
