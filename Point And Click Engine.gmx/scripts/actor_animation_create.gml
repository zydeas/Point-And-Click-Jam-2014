///actor_animation_create(sprite, speed, start frame, end frame, times, loops, play in reverse)

var tempMap = ds_map_create();
ds_map_copy(tempMap,defaultAnimation);

tempMap[? SPRITE] = argument0;
tempMap[? STRIP_START] = argument2;
tempMap[? STRIP_END] = argument3;
tempMap[? SPEED] = argument1;
tempMap[? TIMES] = argument4;
tempMap[? LOOP] = argument5;
tempMap[? REVERSE] = argument6;

return tempMap;