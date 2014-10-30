///sds_local_map_create()

if !sds_local_instance_is_registered()
{
    sds_local_instance_register();
}

var ds = ds_map_create();

ds_list_add(ds_map_find_value(sds_ins_map,sdsLocals.sds_ds),ds);
ds_map_add(ds_map_find_value(sds_ins_map,sdsLocals.sds_types),ds,ds_type_map);
if global.sds_debug show_debug_message(string(id)+":"+string(object_get_name(object_index))+" +sds_l_map:"+string(ds));
return ds;
