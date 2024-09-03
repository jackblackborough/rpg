/// @description Insert description here
// You can write your code in this editor
var _finalMusicVol = global.musicVolume*global.MasterVolume;

if songAsset != targetSongAsset
{
	    if audio_exists(targetSongAsset)
		{
			array_push(fadeOutInstances, songInstance);
			array_push(fadeOutInstVolume, fadeInInstVol);
			array_push(fadeOutInstTime, endFadeOutTime);
			
			songInstance = noone;
			songAsset = noone;
		}
		
		
		
		
		
		
		
	    {
			
		    songInstance = audio_play_sound(targetSongAsset, 4 , true);	
			audio_sound_gain(songInstance, 0, 0);
			fadeInInstVol = 0;
		}
	songAsset = targetSongAsset;
}

	
if audio_is_playing(songInstance)
	{
		if startFadeInTime > 0
		{
			if fadeInInstVol > 1{fadeInInstVol += 1/startFadeInTime;}else{ fadeInInstVol = 1;}
		
		}
        else
		{
		fadeInInstVol = 1;	
			
		}
		
		audio_sound_gain(songInstance, fadeInInstVol*_finalMusicVol, 0);
	}


for(var i = 0; i < array_length(fadeOutInstances); i++ )
{
   if fadeOutInstTime[i] > 0
   {
	 if fadeOutInstVolume[i] > 0 {fadeOutInstVolume[i] -= 1/fadeOutInstTime[i];};   
	   
   }
   else
   {
	   
	   fadeOutInstVolume = 0;
	   
   }
   
   audio_sound_gain(fadeOutInstances[i], fadeInInstVol*_finalMusicVol, 0);
   
   
    if fadeInInstVol <= 0
     {
	     if audio_is_playing(fadeOutInstances[i]){audio_stop_sound(fadeOutInstances[i])} 
		 
	 }
	 
	 
	 array_delete(fadeOutInstances, i,1 );
	 array_delete(fadeOutInstTime, i,1 );
	 i--;
}





