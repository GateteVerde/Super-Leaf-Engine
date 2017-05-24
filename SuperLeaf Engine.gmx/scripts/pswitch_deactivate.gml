///pswitch_deactivate();

/*
**  Usage:
**      pswitch_deactivate();
**
**  Function:
**      Turns off the P-Switch effect
*/

//Turn bricks into coins.
with (obj_brick) {

    //Create a coin from the brick.
    instance_create(x,y,obj_coinchange);
    
    //Destroy the brick
    instance_destroy();
}

//Turn coins into bricks.
with (obj_coin) {

    //Create a brick from the coin.
    with (instance_create(x,y,obj_brick)) {
    
        //Do not animate.
        image_speed = 0.15;
    }
    
    //Destroy the brick.
    instance_destroy();
}

//Turn fake coins into coins.
with (obj_coinchange) {

    //Create a coin from the fake coin.
    with (instance_create(x,y,obj_coin)) {
    
        //Do not animate.
        image_speed = 0.15;
    }
    
    //Destroy the brick
    instance_destroy();    
}

//Resume animation of all blocks.
with (obj_blockparent) {

    image_speed = 0.15;
}

//Resume animation of blue bricks.
with (obj_brick_blue) {

    image_speed = 0.15;
}

//Make coins turn into munchers.
with (obj_muncher) event_user(1);

//Make P-Coins invisible
with (obj_coin_p) visible = false;

//Make P-Doors invisible
with (obj_door_p) visible = false;

//Stop conveyor belts movement
with (obj_conveyor_r) image_speed = 1;
with (obj_conveyor_l) image_speed = -1;
