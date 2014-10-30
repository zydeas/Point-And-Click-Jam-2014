///cmd_list_start()
//Starts playing the command list of the actor, from index 0. Will not start if list is already playing.

if cmd_enabled
{
    if !cmd_playing
    {
        cmd_playing = true;
        cmd_index = 0;
    }
}
