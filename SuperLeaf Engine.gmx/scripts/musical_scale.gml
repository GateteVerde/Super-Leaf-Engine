#define musical_scale
///musical_scale(killer,enemy,playsound)

/*
**  Usage:
**      musical_scale(killer,enemy,playsound)
**
**  Given:
**      killer      Object that is doing the killing
**      enemy       The enemy getting killed
**      playsound   Whether sounds will play
**
**  Purpose:
**      Creates the appropriate amount of points based on the variable hitcombo.
*/

scoreobj = instance_create(round((argument[1].bbox_left+argument[1].bbox_right)/2-8),round(argument[1].y),obj_score);
switch (argument[0].hitcombo) {

    //100 Points
    case (0): {
    
        with (scoreobj) event_user(0);
        if (argument[2])        
            audio_play_sound(snd_kick,0,0);            
    } break;
    
    //200 Points
    case (1): {
    
        with (scoreobj) event_user(1);
        if (argument[2])        
            audio_play_sound(snd_kick2,0,0);            
    } break;

    //400 Points
    case (2): {
    
        with (scoreobj) event_user(2);
        if (argument[2])        
            audio_play_sound(snd_kick3,0,0);            
    } break;
    
    //800 Points
    case (3): {
    
        with (scoreobj) event_user(3);
        if (argument[2])        
            audio_play_sound(snd_kick4,0,0);            
    } break;
    
    //1000 Points
    case (4): {
    
        with (scoreobj) event_user(4);
        if (argument[2])        
            audio_play_sound(snd_kick5,0,0);            
    } break;
    
    //2000 Points
    case (5): {
    
        with (scoreobj) event_user(5);
        if (argument[2])        
            audio_play_sound(snd_kick6,0,0);            
    } break;
    
    //4000 Points
    case (6): {
    
        with (scoreobj) event_user(6);
        if (argument[2])        
            audio_play_sound(snd_kick7,0,0);            
    } break;
    
    //8000 Points
    case (7): {
    
        with (scoreobj) event_user(7);
        if (argument[2])        
            audio_play_sound(snd_kick8,0,0);            
    } break;
    
    //1-UP
    default: {
    
        with (scoreobj) event_user(8);
        if (argument[2])        
            audio_play_sound(snd_kick8,0,0);            
    } break;
}

//Increment combo variable.
argument[0].hitcombo++;

#define musical_scale_fixed
///musical_scale_fixed(killer,enemy,playsound,init)

/*
**  Usage:
**      musical_scale_fixed(killer,enemy,playsound,initial)
**
**  Given:
**      killer      Object that is doing the killing
**      enemy       The enemy getting killed
**      playsound   Whether sounds will play
**      initial     Initial points
**
**  Purpose:
**      Creates the appropriate amount of points based on the variable hitcombo.
*/

scoreobj = instance_create(round((argument[1].bbox_left+argument[1].bbox_right)/2-8),round(argument[1].y),obj_score);
switch (argument[3]+argument[0].hitcombo) {

    //100 Points
    case (0): {
    
        with (scoreobj) event_user(0);
        if (argument[2])        
            audio_play_sound(snd_kick,0,0);            
    } break;
    
    //200 Points
    case (1): {
    
        with (scoreobj) event_user(1);
        if (argument[2])        
            audio_play_sound(snd_kick2,0,0);            
    } break;

    //400 Points
    case (2): {
    
        with (scoreobj) event_user(2);
        if (argument[2])        
            audio_play_sound(snd_kick3,0,0);            
    } break;
    
    //800 Points
    case (3): {
    
        with (scoreobj) event_user(3);
        if (argument[2])        
            audio_play_sound(snd_kick4,0,0);            
    } break;
    
    //1000 Points
    case (4): {
    
        with (scoreobj) event_user(4);
        if (argument[2])        
            audio_play_sound(snd_kick5,0,0);            
    } break;
    
    //2000 Points
    case (5): {
    
        with (scoreobj) event_user(5);
        if (argument[2])        
            audio_play_sound(snd_kick6,0,0);            
    } break;
    
    //4000 Points
    case (6): {
    
        with (scoreobj) event_user(6);
        if (argument[2])        
            audio_play_sound(snd_kick7,0,0);            
    } break;
    
    //8000 Points
    case (7): {
    
        with (scoreobj) event_user(7);
        if (argument[2])        
            audio_play_sound(snd_kick8,0,0);            
    } break;
    
    //1-UP
    default: {
    
        with (scoreobj) event_user(8);
        if (argument[2])        
            audio_play_sound(snd_kick8,0,0);            
    } break;
}

//Increment combo variable.
argument[0].hitcombo++;