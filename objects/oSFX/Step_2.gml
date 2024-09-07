/// @description Insert description here
// You can write your code in this editor
var _sfxVol = global.sfx_volume * global.sfx_Master_Volume;

if coinsound == true
{
  	var _sound = audio_play_sound(coin, 8, false)
	audio_sound_gain(_sound, _sfxVol, 0 )
	coinsound = false;
	

}

if buttonPressSound == true
{

    var _sound = audio_play_sound(soundButtonPress, 8, false)
	audio_sound_gain(_sound, _sfxVol, 0 )
	buttonPressSound = false;
	
}

if buttonReleaseSound = true
{

	var _sound = audio_play_sound(soundButtonRelease, 8, false)
	audio_sound_gain(_sound, _sfxVol, 0 )
	buttonReleaseSound = false;
	
}



  if fireSoundLoop == true && !audio_is_playing(fireSoundLoopInst)
  {
	fireSoundLoopInst = audio_play_sound(soundFire, 6, true); 
	 
	  
  }
  
  if fireSoundLoop == false && audio_is_playing(fireSoundLoopInst)
  {
	audio_stop_sound(fireSoundLoopInst);  
	  
  }
  
  fireSoundLoop = false