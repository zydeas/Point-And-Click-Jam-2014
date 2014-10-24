///actor_animation_playlist_advance()
//Advances the current playlist. Ends the playlist if there are no more animations in it.
actor_animation_end();
if ds_queue_size(playlistPlaying) < 1
{
    playlistPlaying = -1;
    usingAnimationSystem = 0;
    exit;
}
else
{
    actor_animation_play(ds_queue_dequeue(playlistPlaying));
}