///scr_can_shoot()

/*
**  Usage:
**      scr_can_shoot()
**
**  Returns:
**      Whether or not Mario is able to shoot a projectile or spin his tail.
*/

if (!collision_rectangle(bbox_left-2,bbox_top-2,bbox_right+2,bbox_bottom+2,obj_holdparent,0,1))
&& (!collision_rectangle(bbox_left-2,bbox_top-2,bbox_right+2,bbox_bottom+2,obj_brick_blue,0,1))
    return true;
else
    return false;
