// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_For_Player(){
	// check if the player is close so enemy can chase
	var _dis = distance_to_object(obj_Player);
	
	//can we start chasing? or are we already alert and out of attack range
	if((_dis <= alert_dis) or alert) and _dis > attack_dis {
		//enemy is now alert
		alert = true;
	//should we calc our path
	if calc_path_timer-- <= 0 {
			//reset timer 
			calc_path_timer = calc_path_delay
		
			//can we make a path towards the player
			var _found_player = mp_grid_path(global.mp_grid,path,x,y,obj_Player.x,obj_Player.y,choose(0,1));
	
			//start path if we can reach the player 
			if _found_player{
				path_start(path, move_spd, path_action_stop, false);	
			}
		}
	} else{
		//are we close enough to attack?
		if _dis <= attack_dis{
			shootCooldown = 0;	
			path_end();
		}
	}
}