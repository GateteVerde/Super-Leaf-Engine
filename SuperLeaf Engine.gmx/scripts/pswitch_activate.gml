///pswitch_activate();

/*
**  Usage:
**      pswitch_activate();
**
**  Function:
**      Turns on the P-Switch effect
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
        image_speed = 0;
    }
    
    //Destroy the brick.
    instance_destroy();
}

//Turn fake coins into coins.
with (obj_coinchange) {

    //Create a coin from the fake coin.
    with (instance_create(x,y,obj_coin)) {
    
        //Do not animate.
        image_speed = 0;
    }
    
    //Destroy the brick
    instance_destroy();    
}

//Stop animation of all blocks.
with (obj_blockparent) {

    image_speed = 0;
    image_index = 0;
}

//Stop animation of blue bricks.
with (obj_brick_blue) {

    image_speed = 0;
    image_index = 0;
}

//Make munchers turn into coins.
with (obj_muncher) event_user(0);

//Make P-Coins visible
with (obj_coin_p) visible = true;

//Make P-Doors visible
with (obj_door_p) visible = true;

//Stop conveyor belts movement
with (obj_conveyor_r) image_speed = 0;
with (obj_conveyor_l) image_speed = 0;
