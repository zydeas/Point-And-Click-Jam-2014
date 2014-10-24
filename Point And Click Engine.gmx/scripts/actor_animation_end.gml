///actor_animation_end()
if animationPlaying != -1
{
    animationPlaying = -1;
    playlist_sprite = 0;
    playlist_mainIndex = 0;
    playlist_currentFrame = 0;
    playlist_stripDuration = 0;
    playlist_stripStart = 0;
    playlist_speed = 0;
    
    animationLoops = false;
    animationTimes = 0;
    
    if animationEnd animationEnd = false;
    
    if playlistPlaying = -1 usingAnimationSystem = false;
}