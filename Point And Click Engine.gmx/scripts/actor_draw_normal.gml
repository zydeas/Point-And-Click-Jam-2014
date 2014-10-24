if usingAnimationSystem
{
    draw_sprite_ext(playlist_sprite,playlist_mainIndex,x,y,actor_scale_x,actor_scale_y,actor_rot,image_blend,actor_alpha);
}
else
{
    draw_sprite_ext(anim_sprite,anim_mainIndex,x,y,actor_scale_x,actor_scale_y,actor_rot,image_blend,actor_alpha);
}
