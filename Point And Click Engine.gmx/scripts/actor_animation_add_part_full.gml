///actor_animation_add_part_full( part list, name, sprite, speed, start frame, end frame, x relative, y relative, rot, scale, step script, draw script);

//Adds a part to the actor's animation
//Use the

var partList,name,sprite,animSpeed,startFrame,endFrame,tx,ty,rot,scale,stepScript,drawScript;
partList = argument0; 
name = argument1; 
sprite = argument2; 
animSpeed = argument3
startFrame = argument4; 
endFrame = argument5; 
tx = argument6;
ty = argument7;
rot = argument8;
scale = argument9;
stepScript = argument10;
drawScript = argument11;

var partMap = ds_map_create();

partMap[? ACTOR_PART_NAME] = name;
partMap[? ACTOR_PART_SPRITE] = sprite;
partMap[? ACTOR_PART_SPEED] = animSpeed;
partMap[? ACTOR_PART_START_FRAME] = startFrame;
partMap[? ACTOR_PART_END_FRAME] = endFrame;
partMap[? ACTOR_PART_X] = tx;
partMap[? ACTOR_PART_Y] = ty;
partMap[? ACTOR_PART_ROTATION] = rot;
partMap[? ACTOR_PART_SCALE] = scale;
partMap[? ACTOR_PART_SCRIPT_STEP] = stepScript;
partMap[? ACTOR_PART_SCRIPT_DRAW] = drawScript;

ds_list_add(partList,partMap);

return partMap;