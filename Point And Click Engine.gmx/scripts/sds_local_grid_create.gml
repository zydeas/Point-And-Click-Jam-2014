///sds_local_grid_create(w,h)

if !sds_local_instance_is_registered()
{
    sds_local_instance_register();
}

var ds = ds_grid_create(argument0,argument1);

ds_list_add(ds_map_find_value(sds_ins_map,sdsLocals.sds_ds),ds);
ds_map_add(ds_map_find_value(sds_ins_map,sdsLocals.sds_types),ds,ds_type_grid);
if global.sds_debug show_debug_message(string(id)+":"+string(object_get_name(object_index))+" +sds_l_grid:"+string(ds));
return ds;
