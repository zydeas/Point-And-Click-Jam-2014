///animation_init()

//Initializes the basic animation system for an actor

anim_sprite = sprite_index;
anim_mainIndex = 0;
anim_currentFrame = 0;
anim_stripDuration = 0;
anim_stripStart = 0;
anim_speed = 0;
anim_pause = 0;

actor_animation_playlists_init();