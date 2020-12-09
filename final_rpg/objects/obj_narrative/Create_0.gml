/// @description Insert description here
// You can write your code in this editor

textMap = ds_map_create();

value = "";

text_speed = room_speed / 10;
text_displayed = "";
text_length = -1;
index = 0;
cooldown = text_speed;

ds_map_add(textMap, "", "Who am I?");
ds_map_add(textMap, "E", "My name is . . . ");
ds_map_add(textMap, "EE", "My head hurts . . .");
ds_map_add(textMap, "EEE", "Have my hands always been like this?");
ds_map_add(textMap, "EEEE", "The pounding . . . what is it?");
ds_map_add(textMap, "EEEEE", "The sounds what are they?");
ds_map_add(textMap, "EEEEEE", "Something is calling me");
ds_map_add(textMap, "EEEEEEE", "Orcs? Why are they");
ds_map_add(textMap, "EEEEEEEE", "Wait . . . ");
ds_map_add(textMap, "EEEEEEEEE", "what are orcs . . . why do I know that name");
ds_map_add(textMap, "EEEEEEEEEE", "their blood . . . ");
ds_map_add(textMap, "EEEEEEEEEEE", "it's wrong . . . but the pain");

audio_stop_sound(snd_background);
audio_play_sound(snd_background, 10, true);