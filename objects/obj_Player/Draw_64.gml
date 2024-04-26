/// @description Health bar
// You can write your code in this editor
//draw_sprite(
draw_sprite_stretched(spr_HealthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
//draw_sprite(

if(flash > 0){
	shader_set(sh_flash);

	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,
					flashcolor,flash);	
					
	shader_reset();
}