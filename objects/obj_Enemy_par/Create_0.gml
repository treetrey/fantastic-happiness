/// @description Insert description here
// You can write your code in this editor
//are we chasing the player
alert = false;
//the distance we can start chasing the player
alert_dis = 400;
//set distance we stop from the player
attack_dis = 250;
//create path resource
path = path_add();
//enemy move speed
move_spd = 1;
//set delay for path calculation
calc_path_delay = 30;
// set a timer for when we calc a path
calc_path_timer = irandom(60);

flash = 0;
flashcolor = c_red;

timeToDie = 0;

shootCooldown = 1;


hp_max = 3;
hp = hp_max;