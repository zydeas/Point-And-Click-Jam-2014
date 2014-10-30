///map_contains_all(map,key,...)

var args;
args[15] = NULL;

for(var i = 0;i<16;i++)
{
    if i < argument_count
    {
        args[i] = argument[i];
    }
    else
    {
        args[i] = NULL;
    }
}

var map = args[0];

for(var j = 1;j<16;j++)
{
    if args[j] = NULL break;
    else
    {
        if !ds_map_exists(map,args[j])
        {
            return false;
        }
    }
}

return true;
