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
ds_map_add(textMap, "E", "My head hurts");
ds_map_add(textMap, "EE", "Have my hands always been like this");
ds_map_add(textMap, "EEE", "The pounding hurts");
ds_map_add(textMap, "EEEE", "The sounds what are they");
ds_map_add(textMap, "EEEEE", "Something is calling me");
ds_map_add(textMap, "EEEEEE", "Orcs? Why are they");
ds_map_add(textMap, "EEEEEEE", "Wait what are orcs and why do I know that name");
ds_map_add(textMap, "EEEEEEEE", "Blood....");
ds_map_add(textMap, "EEEEEEEEE", "I know it's wrong but why does it make the pain stop");