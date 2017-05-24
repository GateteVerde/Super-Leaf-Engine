///scr_enable_disable_movement();

/*
**  Usage:
**      scr_enable_disable_movement();
**
**  Purpose:
**      Enables / Disables Mario's horizontal movement when certain conditions are true.
*/

if (duck) { //If Mario is crouched down.

    if ((state == 2) || (global.kuriboshoe)) { //If Mario is jumping or it's wearing a kuribo shoe.
    
        //Allow Mario's horizontal movement.
        move = true;
    }
    else { //Otherwise, disallow Mario's movement.
    
        //Disallow Mario's horizontal movement.
        move = false;    
    }
}
else { //If Mario is not crouched down.

    move = true;
}
