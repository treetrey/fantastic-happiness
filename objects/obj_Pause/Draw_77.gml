/// @description Insert description here
//disable alpha blending 
gpu_set_blendenable(false);

if(pause) //draw frozen image to screen while paused
{
	instance_activate_object(obj_Button_Quit);
	instance_activate_object(obj_Button_Options);
	//surface_set_target(application_surface);
	//	if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
	//	else // restore from buffer if we lose the surface
	//	{
	//		pauseSurf = surface_create(resW,resH);
	//		buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
	//	}
	//surface_reset_target();
}

if keyboard_check_pressed(vk_escape) 
{
	if(!pause) //pause now
	{
		
	
		//deactivate everything other than this instance
		instance_deactivate_all(true);
		pause = true;
		//capture this game moment 
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf);
			draw_surface(application_surface,0,0);
		surface_reset_target();
		
		//back up this surface to a buffer in case we lose it 
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed,1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf,0);
	}
	else // unpause now
	{
		pause = false;
		instance_activate_all();
		instance_deactivate_object(obj_Button_Quit);
		instance_deactivate_object(obj_Button_Options);
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}

//Enable alpha blending again
gpu_set_blendenable(true);