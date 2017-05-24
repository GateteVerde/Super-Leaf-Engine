///scr_mario_raccoon();

/*
**  Usage:
**      scr_mario_raccoon();
**
**  Purpose:
**      Handles the animation of Mario when he gets a super leaf.
*/

//Handle shooting animation.
firing = 0;

//If Mario is not holding anything.
if (!holding) {

    //If Mario is not sliding down a slope.
    if (sliding == false) {
    
        //If Mario is kicking something.
        if (kicking == false) {

            //If Mario is not moving.
            if (state == 0) {
            
                //Do not animate.
                image_speed = 0;
                image_index = 0;
                
                //Set the idle sprite.
                sprite_index = spr_mario_raccoon_walk
            }
            
            //If Mario is moving.
            else if (state == 1) {
                    
                //If Mario's vertical speed is lower than -0.1 and Mario is facing right.
                if (hspeed < -0.1) 
                && (xscale == 1)
                && (sliding == false)
                && (swimming == false) 
                && (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slippery,0,0)) {
                
                    //Do not animate
                    image_speed = 0;
                    image_index = 0;
                
                    //Set the turning sprite.
                    sprite_index = spr_mario_raccoon_skid;
                }
                
                //If Mario's vertical speed is greater than 0.1 and Mario is facing left.
                else if (hspeed > 0.1) 
                && (xscale == -1)
                && (sliding == false)
                && (swimming == false)
                && (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slippery,0,0)) {
                
                    //Do not animate
                    image_speed = 0;
                    image_index = 0;
                                
                    //Set the turning sprite.
                    sprite_index = spr_mario_raccoon_skid;
                }
            
                else { //Otherwise, execute this.
                
                    //If Mario is running.
                    if (run) {
            
                        //Set the walking sprite.
                        sprite_index = spr_mario_raccoon_run;
                    }
                    else { //Otherwise, If Mario is not running.
            
                        //Set the running sprite.
                        sprite_index = spr_mario_raccoon_walk;
                    }
                    
                    //Set the animation speed.
                    if (!place_meeting(x,y+1,obj_slippery))
                        image_speed = 0.065+abs(hspeed)/7.5;
                    else
                        image_speed = 0.130+abs(hspeed)/7.5;
                }
            }
            
            //If Mario is doing his trademark pose.
            else if (state == 2) {
            
                //If Mario is not swimming.
                if (!swimming) {
                
                    //If Mario is running.
                    if ((run) || (flying) || (global.pwing)) {
                    
                        //Do not animate.
                        image_speed = 0;
                        image_index = 0+(wiggle/4);
                        
                        //Set the jumping sprite.
                        sprite_index = spr_mario_raccoon_runjump;                     
                    }
                    else { //Otherwise, if Mario is not running.
                
                        //If Mario is doing a special jump.
                        if (starjump) {
                        
                            //Animate.
                            image_speed = 0.4;
                            
                            //Set the special jump sprite.
                            sprite_index = spr_mario_raccoon_starjump;
                        }
                        else {
                        
                            //Do not animate.
                            image_speed = 0;
                            
                            //Set the jumping frame.
                            if (vspeed < 0)
                                image_index = 0;
                            else
                                image_index = 1+(wiggle/4);
                            
                            //Set the jumping sprite.
                            sprite_index = spr_mario_raccoon_jump;
                        }
                    }
                }
                else {
                
                    //Animate
                    image_speed = 0.15;
                
                    //If Mario is swimming.
                    if (vspeed > 0) {
                    
                        //Set the swimming pose.
                        sprite_index = spr_mario_raccoon_swim;
                    }
                    else { //Otherwise, if it's diving.
                    
                        //Set the diving pose.
                        sprite_index = spr_mario_raccoon_swim2;
                    }
                }
            }
            
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
                sprite_index = spr_mario_raccoon_climb;
            }
        }
        else { //Otherwise if it's kicking something.
        
            //Do not animate.
            image_speed = 0;
            image_index = 0;
            
            //Set the kicking pose.
            sprite_index = spr_mario_raccoon_kick;
        }
    }
    else { //Otherwise, if Mario is sliding down a slope.
    
        //Do not animate.
        image_speed = 0;
        image_index = 0;
        
        //Set the kicking pose.
        sprite_index = spr_mario_raccoon_slide;    
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
        image_index = 0+(wiggle/4);        
    }
    
    //Set the holding pose.
    if (state < 2) {
    
        if (!turning)
            sprite_index = spr_mario_raccoon_hold;
        else
            sprite_index = spr_mario_raccoon_warp;
    }
    else
        sprite_index = spr_mario_raccoon_holdjump;
}

//Set the mask
mask_index = spr_mask_big;

//Play a skid sound when Mario is turning directions.
if (sprite_index == spr_mario_raccoon_skid) {

    if (!skidnow) {
    
        //Prevent sound clipping
        skidnow = true;
    
        //Loop 'skid' sound.
        audio_play_sound(snd_skid,0,1);
    }
}
else {

    //Restart sound.
    skidnow = false;
    
    //Stop 'skid' sound.
    audio_stop_sound(snd_skid);
}
