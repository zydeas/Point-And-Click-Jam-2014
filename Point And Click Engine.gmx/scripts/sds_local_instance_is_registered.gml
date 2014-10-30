///sds_local_instance_is_registered()
var ins = ds_list_find_index(global.sds_locals_reg,id);
if ins = NULL
{
    return false;
}
else
{
    return true;
}
