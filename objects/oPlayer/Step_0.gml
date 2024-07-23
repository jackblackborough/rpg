/// @description Insert description here
// You can write your code in this editor
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);
downKey = keyboard_check(vk_down);

xspd = (rightKey - leftKey)*moveSpeed;
yspd = (downKey - upKey)*moveSpeed;





//set sprite

 mask_index = sprite[DOWN]

if yspd == 0
{
if xspd > 0 {face = RIGHT;}
if xspd < 0 {face = LEFT;}
}

if xspd > 0 && face == LEFT{face = RIGHT;};
if xspd < 0 && face == RIGHT{face = LEFT;};
if xspd == 0
{
if yspd > 0{face = DOWN;}
if yspd < 0{face = UP;}
}
if yspd > 0 && face == UP{face = DOWN};
if yspd < 0 && face == DOWN{face = UP};
sprite_index = sprite[face];

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
 
 


//animate


if xspd ==  0 && yspd == 0
{
	
image_index = 0;	
	
}