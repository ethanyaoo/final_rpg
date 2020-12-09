/// @description Insert description here
// You can write your code in this editor

if (room == Level1)
{
	
	/*
	if (totalOrcs < 5)
	{
		getDestination();
		instance_create_layer(des_x, des_y, "Instances", obj_enemy);
		
		totalOrcs++;
	}
	*/
	
	if ((obj_player.firstKilled == false) && (obj_player.evolutionProgress == 1))
	{
		global.inNarrative = true;
		obj_player.firstKilled = true;
		room = Menu;
		obj_narrative.value = "EEEEEEE";
	}
	
	
	if (keyboard_check(ord("R")))
	{
		room_restart();
	}
}
else if (room == Menu)
{
	if (obj_narrative.value == "EEEEEE")
	{
		if (keyboard_check(vk_enter))
		{
			room = Level1;
		}
	}
	else if (obj_narrative.value == "EEEEEEEEEEEE")
	{
		if (keyboard_check(vk_enter))
		{
			room = Level1;
		}
	}
}