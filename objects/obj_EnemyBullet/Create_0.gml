/// making it move in the direction of the player
direction = point_direction(x, y, obj_Player.x, obj_Player.y);
direction = direction + random_range(-4, 4);
speed = 16;
image_angle = direction;

