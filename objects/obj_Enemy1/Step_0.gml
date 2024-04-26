/// @description Insert description here
// You can write your code in this editor
Check_For_Player();

if(hp <= 0 && alarm[0] = -1){
	timeToDie = 1;
}

if(timeToDie = 1){
	alarm[0] = 10;
	timeToDie = 0;	
}

if(flash>0){
	flash -= 0.05;	
}

if(shootCooldown = 0 && alarm[1] = -1 ){
	alarm[1] = 30;	
	shootCooldown = 1;
}