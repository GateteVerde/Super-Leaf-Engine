///scr_mario_frog();

/*
**  Usage:
**      scr_mario_frog();
**
**  Purpose:
**      Handles the animation of Mario when he wearing the Frog Suit.
*/

//Handle shooting animation.
firing = 0;

//Stop skid sound from playing.
audio_stop_sound(snd_skid);

//If Mario is not holding anything.
if (!holding) {
    
    //If Mario is kicking something.
    if (kicking == false) {

        //If Mario is not moving.
        if (state == 0) {
        
            //Do not animate.
            image_speed = 0;
            image_index = 0;
            
            //Set the idle sprite.
            sprite_index = spr_mario_frog_walk
        }
        
        //If Mario is moving.
        else if (state == 1) {
                
            //Animate.
            image_speed = 0.1;
            
            //Set the walking sprite.
            sprite_index = spr_mario_frog_walk;
        }
        
        //If Mario is doing his trademark pose.
        else if (state == 2) {
        
            //If Mario is not swimming.
            if (!swimming) {
            
                //Do not animate.
                image_single = 2;
                
                //Set the jumping sprite.
                sprite_index = spr_mario_frog_walk;
            }
            else { //If Mario is swimming.
            
                //Handle animation.
                if (speed == 0) {
                
                    //Set the idle swimming sprite if Mario was swimming to the side.
                    if (swimdir == 0) {
                    
                        //Set the sprite.
                        sprite_index = spr_mario_frog_swim;
                        
                        //Animate
                        image_speed = 0.1;
                    }
                    else                    
                        image_speed = 0;
                }
                else {
                
                    //Set the swimming poses
                    switch (swimdir) {
                    
                        //Swim left / right
                        case (0): sprite_index = spr_mario_frog_swim2; break;
                        
                        //Swim upwards
                        case (1): {
                        
                            //If 'Left' or 'Right' is pressed.
                            if ((keyboard_check(vk_left)) || (keyboard_check(vk_right)))
                                sprite_index = spr_mario_frog_swim2;
                            else
                                sprite_index = spr_mario_frog_swim3;
                        }
                        break;
                        
                        //Swim downwards
                        case (2): {
                        
                            //If 'Left' or 'Right' is pressed.
                            if ((keyboard_check(vk_left)) || (keyboard_check(vk_right)))
                                sprite_index = spr_mario_frog_swim2;
                            else
                                sprite_index = spr_mario_frog_swim4;
                        } break;
                    }
                    
                    //Animate
                    if (keyboard_check(vk_control))
                        image_speed = 0.2;
                    else
                        image_speed = 0.1;
                }
            }
        }
        
        //If Mario is climbing.        
        else if (state == 3) {
            
            //If Mario is not moving.
            if (speed == 0) {
            
                //Do not animate
                image_speed = 0;
                image_index = 0;
                
                //Reset temporary variable
                noise = 0;
            }
            
            //If Mario is moving.
            else if (speed != 0) {
            
                //Animate
                image_speed = 0.15;
                
                //Increment noise and play a sound when noise hits 7.
                if (!place_meeting(x,y,obj_climb_net)) {
                
                    if (vspeed < 0) {
                
                        noise++;
                        if (noise >= 8) {
                        
                            //Reset noise.
                            noise = 0;
                            
                            //Play 'Climb' sound
                            audio_play_sound(snd_climb,0,0);                
                        }
                    }
                    else {
                    
                        //Reset noise.
                        noise = 0;
                    }
                }
            }
            
            //Set the climbing pose.
            sprite_index = spr_mario_frog_climb;
        }
    }
    else { //Otherwise if it's kicking something.
    
        //Do not animate.
        image_speed = 0;
        image_index = 0;
        
        //Set the kicking pose.
        sprite_index = spr_mario_frog_kick;
    }
}

//Otherwise, if Mario is holding something.
else if (holding) {

    //If Mario is not moving.
    if (state == 0) {
    
        //Do not animate.
        image_speed = 0;
        image_index = 0;
    }
    
    //If Mario is moving.
    else if (state == 1) {
    
        //Set the animation speed.
        if (!place_meeting(x,y+1,obj_slippery))
            image_speed = 0.065+abs(hspeed)/7.5;
        else
            image_speed = 0.130+abs(hspeed)/7.5;    
    }
    
    //If Mario is doing his trademark pose.
    else if (state == 2) {
    
        //Do not animate.
        image_speed = 0;
        image_index = 2;        
    }
    
    //Set the holding pose.
    if (!turning)
        sprite_index = spr_mario_frog_hold;
    else
        sprite_index = spr_mario_frog_warp;
}

//Set the mask
if (state != 3) {

    if (holding == 0)
        mask_index = spr_mask;
    else
        mask_index = spr_mask_big;
}
else
    mask_index = spr_mask_big;
