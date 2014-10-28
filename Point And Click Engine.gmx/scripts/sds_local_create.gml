///sds_local_create()
var ins = ds_list_find_index(global.sds_locals_reg,id)
if ins = NULL
{
    sds_ins_map = sds_local_instance_register();
}

var list = ds_list_create();
ds_list_add(ds_map_find_value(sds_ins_map,ds_type_list),list);

return list;

