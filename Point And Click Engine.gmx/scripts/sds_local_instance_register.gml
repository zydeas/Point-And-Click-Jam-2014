///sds_local_instance_register()
//Sets up the structure for an instance in the local system. Returns the id of the instance map.

var map = ds_map_create();
map[? sdsLocals.sds_id] = id;
map[? ds_type_map] = ds_list_create();
map[? ds_type_grid] = ds_list_create();
map[? ds_type_list] = ds_list_create();
map[? ds_type_stack] = ds_list_create();
map[? ds_type_queue] = ds_list_create();
map[? ds_type_priority] = ds_list_create();
ds_list_add(global.sds_locals_reg,id);
ds_list_add(global.sds_locals,map);
return map;
