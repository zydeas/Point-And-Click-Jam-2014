///calculate_mouse_object()
var o = instance_position(mouse_x,mouse_y,action_parent_obj)
if o != noone
{
    global.objUnder = o;
}
else
{
    global.objUnder = NULL;
}
