///actor_animation_playlists_init()

//Animations are defined in maps, using constants as keys
//Creating a new animation copies this map
defaultAnimation = ds_map_create();

defaultAnimation[? SPRITE] = NULL;
defaultAnimation[? STRIP_START] = 0;
defaultAnimation[? STRIP_END] = 1;
defaultAnimation[? SPEED] = 1;
defaultAnimation[? LOOP] = false;
defaultAnimation[? TIMES] = 0;
defaultAnimation[? REVERSE] = false;

//If the system is using the animaitons
usingAnimationSystem = false;

tempPlaylist = ds_queue_create();

//The replacement animation variables used for the playlist system.
playlist_sprite = 0;
playlist_mainIndex = 0;
playlist_currentFrame = 0;
playlist_stripDuration = 0;
playlist_stripStart = 0;
playlist_speed = 0;

//The queue that will be used to hold the animations in the playlist

//If a playlist is playing
playlistPlaying = -1;

//A pointer to the current animation map. Will be -1 if none is playing
animationPlaying = -1;

//If the animation loops
animationLoops = false;

//The number of times a particular animtation will repeat. Seperate from loops
animationTimes = 0;
