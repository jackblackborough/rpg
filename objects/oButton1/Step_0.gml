/// @description Insert description here
// You can write your code in this editor
if image_index == 0 && place_meeting(x, y, oPlayer)
{
image_index = 1;
oSFX.buttonPressSound = true;
	
}

if image_index == 1 && !place_meeting(x, y, oPlayer)
{
image_index = 0;
oSFX.buttonReleaseSound = true;
	
}