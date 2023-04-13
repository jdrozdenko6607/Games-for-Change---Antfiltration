/// @description Insert description here
// You can write your code in this editor
// code that runs once when the player is created

xSpeed = 4;

xDirection = 0;

xVector = xSpeed * xDirection;

ySpeed = 4;	
yDirection = 0; 
yVector = ySpeed * yDirection;

timer = 2

falling_speed = 0;

global.eggs = 0;

instance_create_depth(x, y, 300, oCrumb)
