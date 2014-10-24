///actor_playlist_play(playlist)

ds_queue_copy(tempPlaylist,argument0)
actor_animation_play(ds_queue_head(tempPlaylist));
playlistPlaying = tempPlaylist;