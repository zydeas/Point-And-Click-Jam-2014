///sds_local_instance_register()
//Sets up the structure for an instance in the local system. Sets sds_ins_map to the created map.

var map = ds_map_create();
map[? sdsLocals.sds_id] = id;
map[? sdsLocals.sds_ds] = ds_list_create();
map[? sdsLocals.sds_types] = ds_map_create();
show_debug_message(map);
ds_list_add(global.sds_locals_reg,id);
ds_map_add(global.sds_locals,id,map);

sds_ins_map = map;
