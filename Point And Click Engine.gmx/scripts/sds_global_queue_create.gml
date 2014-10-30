///sds_global_queue_create()
var ds = ds_queue_create()
ds_list_add(global.sds_globals[ds_type_queue],ds);
return ds;
