///sds_global_priority_create()
var ds = ds_priority_create()
ds_list_add(global.sds_globals[ds_type_priority],ds);
return ds;
