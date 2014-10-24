///actor_animation_update()

if !anim_pause 
{
    if !usingAnimationSystem
    {
        anim_currentFrame+=anim_speed;
    
        //The main image index
        anim_mainIndex = floor((anim_currentFrame mod anim_stripDuration) + anim_stripStart);
    }
    else
    {
        actor_animation_playlist_update();
    }
}