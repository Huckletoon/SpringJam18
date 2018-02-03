debug = 0;
if (global.currentAudio != 0)
{
	var distance = global.player.x - global.slasher.x;
	var gain = 0;
	if (distance < global.alertMin and distance > 0)
	{
		if (distance > global.alertMax)
		{
			gain = 1 - ((distance - global.alertMax) / (global.alertMin - global.alertMax));
		}
		else
		{
			gain = 1;
		}
	}
	debug = gain;
	audio_emitter_gain(global.alert, gain);
	audio_emitter_gain(global.ambient, 1 - gain);
}