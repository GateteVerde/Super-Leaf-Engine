///scr_can_jump()

/*
**  Usage:
**      scr_can_jump()
**
**  Returns:
**      Whether or not Mario is able to jump.
*/

//If Mario is not overlapping a note block.
if (!collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_noteblock,0,1))
&& (!collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_noteblock_orange,0,1)) {

    //If Mario is wearing a kuribo shoe
    if (global.kuriboshoe) {
    
        if ((jumping == 0) && (infloor) && (vspeed > -2))
            return true;
        else
            return false;
    }
    
    //Otherwise, if it's not.
    else {
    
        if ((jumping == 0) && (infloor) && (!vspeed >= 0))
            return true;
        else
            return false;
    }
}
else
    return false;
