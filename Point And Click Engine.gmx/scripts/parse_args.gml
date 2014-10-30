///parse_args(new args, original args)

var args=argument0;
var oldArgs=argument1;

for(var i = 0;i<16;i++)
{
    if i < argument_count
    {
        args[@i] = oldArgs[i];
    }
    else
    {
        args[@i] = NULL;
    }
}
