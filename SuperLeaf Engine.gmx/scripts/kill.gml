///kill(x,y,sprite,xscale,vspeed);

/*
**  Usage:
**      kill(x,y,sprite,xscale,vspeed);
**
**  Given:
**      x           X position where the dead enemy is generated.
**      y           Y position where the dead enemy is generated.
**      sprite      Sprite of the generated dead enemy.
**      xscale      Facing direction of the object.
**      vspeed      Vertical speed of the dead enemy.
**
**  Purpose:
**      Creates a appropiate dead enemy.
*/

//Create dead object.
dead = instance_create(argument[0],argument[1],obj_enemy_dead);

//Set the sprite
dead.sprite_index = argument[2];

//Set the facing direction
dead.image_xscale = argument[3];

//Set the vertical speed
if (!place_meeting(x,y,obj_swim))
    dead.vspeed = argument[4];
else
    dead.vspeed = argument[4]/2;

//Set the horizontal speed.
if (other.hspeed = 0) {

    if (other.x < x)
        dead.hspeed = 0.6;
    else if (other.x > x)
        dead.hspeed = -0.6;
}
else {

    if (other.object_index == obj_mario) {
    
        if (other.sliding) {
        
            if (other.hspeed > 0)
                dead.hspeed = other.hspeed;
            else if (other.hspeed < 0)
                dead.hspeed = other.hspeed;
        }    
    }
    else {
    
        if (other.hspeed > 0)
            dead.hspeed = 0.6;
        else if (other.hspeed < 0)
            dead.hspeed = -0.6;
    }
}

//Destroy
instance_destroy();
