///cmd_init()
//Initalizes the command list for the object

//The current list of commands to play when the time comes.
cmdList = ds_list_create();

cmdIndex = 0;
cmdPlaying = false;
cmdPaused = false;

//An extra list of the maps that should be freed at the end of the object's life incase someone forgets to.
cmdMaps = ds_list_create();
