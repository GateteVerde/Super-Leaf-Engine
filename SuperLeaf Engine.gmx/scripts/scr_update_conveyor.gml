///scr_update_conveyor();

/*
**  Usage:
**      scr_update_conveyor();
**
**  Purpose:
**      Forces Mario's x position when overlapping a conveyor belt.
*/

//If Mario is not jumping or climbing.
if (state < 2) {

    //Left conveyor belt collision
    lconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_l,0,0);
    if ((lconv) && (lconv.image_speed != 0)) {
    
        if (!collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))
            x--;
    }
    
    //Right conveyor belt collision
    rconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_r,0,0);
    if ((rconv) && (rconv.image_speed != 0)) {
    
        if (!collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0))
            x++;
    }
}
