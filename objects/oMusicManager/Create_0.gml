/// @description Insert description here
// You can write your code in this editor
global.musicVolume = 1;	
global.MasterVolume = 1;

songInstance = noone;
songAsset = noone;
targetSongAsset =soundIceArea;
endFadeOutTime = 0;
startFadeInTime = 0;
fadeInInstVol = 1;
fadeOutInstances = array_create(0);
fadeOutInstVolume = array_create(0);
fadeOutInstTime = array_create(0);