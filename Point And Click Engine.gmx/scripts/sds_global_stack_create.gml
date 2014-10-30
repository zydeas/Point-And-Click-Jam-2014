///sds_global_stack_create()
var ds = ds_stack_create()
ds_list_add(global.sds_globals[ds_type_stack],ds);
return ds;
