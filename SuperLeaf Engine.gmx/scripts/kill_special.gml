///kill_special();

/*
**  Usage:
**      kill_special();
**
**
**  Purpose:
**      Creates the appropiate object when Mario hits a enemy with a special item.
*/

//Prevent if target is a shell and it's moving upwards.
if ((other.object_index == obj_shell) && (other.vspeed < 0))
exit;

//Play 'kick' sound
audio_play_sound(snd_kick,0,0);

//Kill it
with (other) {

    event_user(7);
}

//Get 100 points
with (instance_create(round(other.bbox_left+other.bbox_right)/2-8,round(other.y),obj_score)) event_user(0);

//Create hit effect.
ID = instance_create(round(other.bbox_left+other.bbox_right)/2,round(other.bbox_top+other.bbox_bottom)/2-8,obj_smoke);
with (ID) {

    sprite_index = spr_spinthump;
}

//Destroy
with (other) instance_destroy();
