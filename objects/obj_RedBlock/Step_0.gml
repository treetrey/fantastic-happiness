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