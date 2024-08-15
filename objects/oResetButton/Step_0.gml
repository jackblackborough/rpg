/// @description Insert description here
// You can write your code in this editor
if place_meeting(x ,y, oPlayer)
{
    state = 1	
}else{
    state = 0;	
}

if state == 1
{
	with oBlock
	{
	   x = xstart;
	   y = ystart;
	}
}

image_index = state;