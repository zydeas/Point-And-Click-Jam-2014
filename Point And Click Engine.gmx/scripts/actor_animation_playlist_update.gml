///actor_animation_playlist_update()

if usingAnimationSystem and animationPlaying != -1
{
    playlist_currentFrame+=playlist_speed;

    //The main image index
    if playlist_currentFrame <= playlist_stripDuration
    {
        playlist_mainIndex = playlist_currentFrame;
    }
    else if animationLoops
    {
        playlist_currentFrame = playlist_stripStart; 
    }
    else if animationTimes > 0 
    {
        animationTimes -= 1;
        playlist_currentFrame = playlist_stripStart;   
    }
    else if playlistPlaying != -1
    {
        actor_animation_playlist_advance();
    }
    else
    {
        actor_animation_end();
    }
}