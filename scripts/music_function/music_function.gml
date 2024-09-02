// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_song_ingame(_song, _fadeOutCurrentSong = 0, _fadeIn = 0 )
{
   with(oMusicManager)
   {
	     targetSongAsset = _song;
		 endFadeOutTime = _fadeOutCurrentSong;
		 startFadeInTime = _fadeIn;
   }
}