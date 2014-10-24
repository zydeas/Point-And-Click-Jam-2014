//The list that will store all the parts of an actor
animationPartList = ds_list_create();

//The map that holds the names of the parts
animationPartNames = ds_map_create();
animationPartIds = ds_map_create();

//Add the first default part, which mimics the basic GM drawing.
anim_defaultPart = actor_animation_add_part_full(animationPartList,"PART_DEFAULT",sprite_index,image_speed,0,sprite_get_number(sprite_index)-1,x,y,image_angle,image_xscale,NULL,NULL);
