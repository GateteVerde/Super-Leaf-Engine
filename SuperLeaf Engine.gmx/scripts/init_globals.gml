///init_globals();

/*
**  Usage:
**      init_globals();
**
**  Returns:
**      Initializes every variable needed to make the game run properly
*/

//World number
global.world = 1;

//Coin amount
global.coins = 0;

//Time Limit
global.time = 0;

//Lives
lives = 5;

//Score
score = 0;

//Mario Start!
global.mariostart = 0;

//Enable horizontal wrap
global.hwrap = 0;

//Whether a level is cleared
global.clear = 0;

//Allow infinite flight on level
global.pwing = 0;

//Powerup
global.powerup = cs_small;

//Position change object type
global.postchange = -1;

//Position change coordinates
global.postx = 0;
global.posty = 0;

//Whether Mario died
global.died = false;

//Score needed to trigger the card minigame.
global.cardscore = 80000;

//PSwitch time limit
global.pswitch = 0;

//Starman time limit
global.starman = 0;

//Goal cards
global.card[0] = -1;
global.card[1] = -1;
global.card[2] = -1;

//Mushroom house prizes
global.prize[0] = 0;
global.prize[1] = 0;
global.prize[2] = 0;

//Map pipe area spawn
global.pipetype = 0;

//Map inventory variables
for (var i=0; i<28; i++;) {

    //Inventory page 1
    global.inventory[i] = 0;
}

//Handle foregrounds
for (var i=0; i<8; i++;) {

    //Foregrounds
    global.bgfg[i] = false;
}

//Message to display on bonuses
global.mg = 0;

//Remember music from rooms
global.music = -1;

//Give points if there's enemies on the goal
global.bonus = -1;

//Is Mario wearing a kuribo shoe?
global.kuriboshoe = false;

//Item that is carried between rooms.
global.carrieditem = noone;

//Sprite of the item that is carried between rooms.
global.carriedsprite = noone;

//Creates a teleport effect when starting a map.
global.mapstart = 0;

//Shows Mario Start! at the beginning of the level.
global.mariostart = 0;

//Handle the starman effect on map.
global.mapstar = false;

//Handle the pwing effect on map
global.mappwing = false;

//Handle the cloud effect on map.
global.mapcloud = false;

//Handle the data structure of the world maps.
global.worldmap = ds_map_create();

//Handle the data structure of the card minigame.
global.cardgame = ds_map_create();

//Handle the pattern for the cards of the card minigame.
global.cardpattern = 1;

//Set the default colour of the platform paths.
global.path_colour = c_white;
