//player_action_move(path)

actor_animation_play(anim_stand);
if point_distance(mouse_x,mouse_y,clickedX,clickedY) < 4 and moving and runClickTimer > 0 and !running
{
    path_speed = runSpeed;
    runClickTimer = 0;
    running = true;
}
else if moveTimer <=0
{
    
    path_end();
    
    if argument0
    {
        path_start(tempPath,walkSpeed,0,1);
        moveTimer = 5;
        running = false;
        moving = true;
        runClickTimer = 15;
        actor_animation_play(anim_walk);
        clickedX = mouse_x;
        clickedY = mouse_y;
    }
}
