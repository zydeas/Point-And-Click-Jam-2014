///actor_animation_play(animation)
//Loads an animation map into the actor. Previous animation will be overriten.
var map = argument0;

playlist_sprite = map[? SPRITE];
playlist_stripDuration = map[? STRIP_END];
playlist_stripStart = map[? STRIP_START]
playlist_speed = map[? SPEED];
animationTimes = map[? TIMES];
animationLoops = map[? LOOP];

playlist_mainIndex = 0;
playlist_currentFrame = 0;

animationEnd = false;

usingAnimationSystem = true;
animationPlaying = map;