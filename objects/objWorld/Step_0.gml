if(music){
	if(nowPlaying == noone || !audio_is_playing(nowPlaying)){
		if(instance_number(objScreenTitle) > 0 || instance_number(objScreenAdvancedStart) > 0){
			nowPlaying = audio_play_sound(bgmTitle, 1, false); audio_sound_gain(nowPlaying, 0.1, 0);
		} else if (instance_number(objScreenGameOver) > 0) {
			nowPlaying = audio_play_sound(bgmGameOver, 1, false); audio_sound_gain(nowPlaying, 0.3, 0);
		} else if (pc.stage > 0 && pc.stage % 10 == 0) {
			nowPlaying = audio_play_sound(bgmBoss, 1, false); audio_sound_gain(nowPlaying, 0.1, 0);
		} else {
			nowPlaying = audio_play_sound(musicList[bgmTrack], 1, false); audio_sound_gain(nowPlaying, 0.1, 0);
			bgmTrack ++;
			if(bgmTrack >= array_length(musicList)){ bgmTrack = 0; }
		}
	}
	
	
	
	
}



if(rollWord){
	rollWord = false;
	worldGen();
	audio_stop_all(); ww.nowPlaying = noone;
}