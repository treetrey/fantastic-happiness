/// making it move in the direction of the player
direction = point_direction(x, y, mouse_x, mouse_y);
direction = direction + random_range(-4, 4);
speed = 16;
image_angle = direction;

