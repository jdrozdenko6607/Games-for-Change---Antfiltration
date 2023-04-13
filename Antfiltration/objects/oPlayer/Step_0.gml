/// @description Insert description here
// You can write your code in this editor

//code that runs every frame (60 times per second)
// this is code that runs continually (or every frame) when the player exists

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

xDirection = right - left;
xVector = xSpeed * xDirection;
// check if there is a wall 4 pixels away from my player
if (place_meeting(x + xVector, y, oWall))
	{
		// while I am moving towards a wall, if I get 4 pixels away, start moving at a slower pace (1 pixel at a time)
		// ! means "not"
		while(!place_meeting(x + xVector, y, oWall))     
		{
			// only move 1 pixel at a time until I hit a wall
			x = x + xDirection;	
		}
		// otherwise stop
		xVector = 0;
	}
// otherwise move as normal
x = x + xVector;

yDirection = 0

if (place_meeting(x, y, oLadder) or place_meeting(x, y, oLadder2))
{
	yDirection = down - up; 
}

yVector = ySpeed * yDirection;
if (place_meeting(x, y + yVector, oWall))
	{
		// while I am moving towards a wall, if I get 4 pixels away, start moving at a slower pace (1 pixel at a time)
		// ! means "not"
		while(!place_meeting(x, y + yVector, oWall))     
		{
			// only move 1 pixel at a time until I hit a wall
			y = y + yDirection;	
		}
		// otherwise stop
		yVector = 0;
		falling_speed = 0;
	}
else {
	if !(place_meeting(x, y, oLadder) or place_meeting(x, y, oLadder2))
	{
		falling_speed = falling_speed + 0.1
		yVector = falling_speed
	}
}

y = y + yVector;

	while(place_meeting(x, y, oWall))     
{
	y = y - 0.1;	
	falling_speed = 0
}

//if ((x - oCrumb.x) > 100) or ((y - oCrumb.y) > 100) or ((oCrumb.x - x) > 100) or ((oCrumb.y - y) > 100)
	{
		//instance_create_depth(x, y, 300, oCrumb)
	}
	
if (timer = 0)
	{
		instance_create_depth(x, y, 300, oCrumb)
		timer = 2
	}
else
	{
		timer -=1/room_speed
	}
	











