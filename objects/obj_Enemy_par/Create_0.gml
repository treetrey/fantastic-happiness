/// @description Insert description here
// You can write your code in this editor
//are we chasing the player
alert = false;
//the distance we can start chasing the player
alert_dis = 300;
//set distance we stop from the player
attack_dis = 10;
//create path resource
path = path_add();
//enemy move speed
move_spd = 1;
//set delay for path calculation
calc_path_delay = 30;
// set a timer for when we calc a path
calc_path_timer = irandom(60);