///sds_global_grid_create(w,h)
var ds = ds_grid_create(argument0,argument1);
ds_list_add(global.sds_globals[ds_type_grid],ds);
return ds;
