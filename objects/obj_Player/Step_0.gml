/// button inputs
var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

// getting the x and y speeds to match the speed listed in create
var _xinput = (_right - _left) * my_speed;
var _yinput = (_down - _up) * my_speed;

//Collisions
if place_meeting(x + _xinput, y, obj_WallTile)
{
	_xinput = 0;
}
if place_meeting(x, y + _yinput, obj_WallTile)
{
	_yinput = 0;
}

// Moving the player
x += _xinput;
y += _yinput;


//Direction of the player
image_angle = point_direction(x, y, mouse_x, mouse_y);

//Shooting the gun
if (mouse_check_button_pressed(mb_left))
{
	instance_create_layer(x, y, layer, obj_TestBullet);
}
