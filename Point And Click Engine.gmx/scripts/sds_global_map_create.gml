///sds_global_map_create()
var map = ds_map_create()
ds_list_add(global.sds_globals[ds_type_map],map);
return map;
