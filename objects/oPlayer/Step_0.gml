/// @description Insert description here
// You can write your code in this editor
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);

xspd = (rightKey - leftKey)*moveSpeed;
yspd = (downKey - upKey)*moveSpeed;


//collision with wall
if place_meeting(x + xspd, y, oWall)
{	
xspd = 0;	
	
}

if place_meeting(x , y + yspd, oWall) 
{	
yspd = 0;	
	
}



x += xspd;
y += yspd;
