///scr_update_pmeter();

/*
**  Usage:
**      scr_update_pmeter();
**
**  Purpose:
**      Makes Mario run faster and allows him to fly when he has the raccoon/tanooki powerup.
*/

//If Mario's horizontal speed is equal/greater than 2.7 and it's not wearing a kuribo shoe.
if ((abs(hspeed) >= 2.5) && (!global.kuriboshoe)) {

    //If Mario is not jumping.
    if (state < 2) {
    
        //If the P-Meter is full.
        if (pmeter > 112) {
        
            //Prevent sound clipping.
            if (!pmeterready) {
            
                //Same as above.
                pmeterready = true;
                
                //Loop P-Meter sound
                audio_play_sound(snd_pmeter,0,1);
            }
            
            //Keep P-Meter full.
            pmeter = 112;
        
            //Make Mario able to run.
            run = true;
        }
        else {
        
            //Fill P-Meter.
            pmeter += 2;
        }
    }
    
    //If Mario is on the ground and not running.
    else if ((!run) && (pmeter > 0)) {
        
        //Empty P-Meter.
        pmeter -= 1;
    }
}
else if ((!run) || ((infloor) && (abs(hspeed) < 2.5))) { //If Mario's horizontal speed is lower than 2.7.

    //If Mario is flying and lands on the floor.
    if ((flying) && (state <= 1)) {
    
        //Stop P-Meter sound
        audio_stop_sound(snd_pmeter);
        
        //Avoid sound clipping
        pmeterready = false;
        
        //Allow Mario to fly again.
        flying = false;
        
        //Make Mario walk
        run = false;
        
        //Empty P-Meter.
        if (pmeter > 0) {
        
            pmeter -= 1;
        }
    }
    
    //If Mario is not flying.
    else if (!flying) {
    
        //Stop P-Meter sound
        audio_stop_sound(snd_pmeter);
        
        //Avoid sound clipping
        pmeterready = false;
        
        //Make Mario walk
        run = false;
        
        //Restart flying.
        alarm[11] = 0;
        
        //Empty P-Meter.
        if (pmeter > 0) {
        
            pmeter -= 1;
        }    
    }   
}
