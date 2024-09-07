/// @description Insert description here
// You can write your code in this editor
if instance_exists(oButtonBlue){
	
 state = oButtonBlue.image_index;	
}


		if state = 0
		{
			sprite_index = sfireVentOff
		}
		
		
		if state = 1
		{
			sprite_index = sfireVentOn
			oSFX.fireSoundLoop = true;
			
		}
		
		depth = -bbox_bottom;