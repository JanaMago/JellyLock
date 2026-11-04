//cam control

cam = instance_create_depth(x,y,Obj_QCam, 0)

//movement 

player_speed = 6; //pixels per second
running_speed = 9; 

//dashing

dash_speed = 15;
is_dashing = false;
dash_duration = 10;
dash_timer = 0;
dash_cooldown = 0;

//i frames
is_invinc = false;
iframe_duration = 90;
iframe_timer = 0;
iframes = 0;




