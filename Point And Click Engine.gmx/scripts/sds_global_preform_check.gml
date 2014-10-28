///sds_global_preform_check(type)
//Checks the global sds list for any structures that don't exist any more, and then removes them from the list.
if argument0 >0 or argument0 < 7
{
    for(var i=0;i<ds_list_size(global.sds_globals[argument0]);i++)
    {
        if !ds_exists(ds_list_find_value(global.sds_globals[argument0],i),argument0)
        {
            show_debug_message("Freed sds_"+string(ds_list_find_value(global.sds_globals[argument0],i))+":list_"+string(i));
            ds_list_delete(global.sds_globals[argument0],i);
        }
    }
}
else
{
    show_error("SDS Error: type '"+string(argument0)+"' is not a valid ds_type",false)
}
