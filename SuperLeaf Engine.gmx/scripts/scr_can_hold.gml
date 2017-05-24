///scr_can_hold()

/*
**  Usage:
**      scr_can_hold()
**
**  Returns:
**      Whether or not Mario is able to hold an item.
*/

if (instance_exists(obj_mario))
&& (keyboard_check(vk_control))
&& (global.kuriboshoe == false)
&& (obj_mario.state < 3)
&& (!obj_mario.holding)
&& (!obj_mario.duck)
&& (!obj_mario.sliding)
&& (!obj_mario.disablecontrol)
    return true;
else
    return false;
