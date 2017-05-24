///kill_stomp(x,y,sprite,xscale);

/*
**  Usage:
**      kill_stomp(x,y,sprite,xscale);
**
**  Given:
**      x           X position where the dead enemy is generated.
**      y           Y position where the dead enemy is generated.
**      sprite      Sprite of the generated dead enemy.
**      xscale      Facing direction of the object.
**
**  Purpose:
**      Creates a appropiate stomped dead enemy.
*/

//Create dead object.
dead = instance_create(argument[0],argument[1],obj_enemy_dead);

//Set the sprite
dead.sprite_index = argument[2];

//Set the facing direction
dead.image_xscale = argument[3];

//Set the horizontal speed
if (global.kuriboshoe) {

    if (hspeed <> 0)
        dead.hspeed = 0.5*sign(hspeed);
}

//Destroy
instance_destroy();
