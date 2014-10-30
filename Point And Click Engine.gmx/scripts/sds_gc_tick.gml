///sds_gc_tick()
if global.sds_gc_global_enabled
{
    sds_global_preform_check(ds_type_list);
    sds_global_preform_check(ds_type_map);
    sds_global_preform_check(ds_type_grid);
    sds_global_preform_check(ds_type_stack);
    sds_global_preform_check(ds_type_priority);
    sds_global_preform_check(ds_type_queue);
}

if global.sds_gc_local_enabled
{
    sds_gc_local_tick();
}
