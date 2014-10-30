///cmd_init()
//Initalizes the command system for an object

//The current list of commands to play when the time comes.
cmd_list = sds_local_list_create();

cmd_index = 0;
//The currently playing command.
cmd_current = NULL;

cmd_enabled = true;
cmd_playing = false;
cmd_paused = false;
