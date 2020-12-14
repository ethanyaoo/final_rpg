/// @description Insert description here
// You can write your code in this editor

if (room == Level1)
{	
	
	if ((obj_player.firstKilled == false) && (obj_player.evolutionProgress == 1))
	{
		global.inNarrative = true;
		obj_player.firstKilled = true;
		room = Menu;
		obj_narrative.value = "EEEEEEEEEE";
	}
	else if ((obj_player.x > 250) && (obj_player.y > 145) && (obj_narrative.value != "EEEEEEEEEE"))
	{
		global.inNarrative = true;
		room = Menu;
		obj_narrative.value = "EEEEEEE";
	}
	
	
	if (keyboard_check(ord("R")))
	{
		room_restart();
	}
	
	if (obj_player.healthLeft <= 0)
	{
		room = GameOver;
	}
}
else if (room == Level2)
{
	if (totalOrcs <= 5)
	{
		getDestination();
		instance_create_layer(des_x, des_y, "Instances", obj_enemy);
		
		totalOrcs += 1;
	}
	
	
	if (obj_player.x > 560 && obj_player.y > 100 && obj_narrative.value != "EEEEEEEEEEEE")
	{
		global.inNarrative = true;
		room = Menu;
		obj_narrative.value = "EEEEEEEEEEEE";
	}
	
	if ((obj_player.playerSpecies == "orc") && (obj_player.evolutionProgress == obj_player.evolutionProgressGoal))
	{
		global.inNarrative = false;
		room = gameOver;
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
	else if (obj_narrative.value == "EEEEEEEEEE")
	{
		if (keyboard_check(vk_enter))
		{
			room = Level1;
		}
	}
	else if (obj_narrative.value == "EEEEEEEEEE")
	{
		if (keyboard_check(vk_enter))
		{
			room = Level1;
		}
	}
	else if ((obj_narrative.value == "EEEEEEEEEEEE") || (obj_narrative.value == "EEEEEEEEEEEEE"))
	{
		if (keyboard_check(vk_enter))
		{
			global.inNarrative = false;
			room = Level2;
		}
	}
	
}
else if (room == GameOver)
{
	if (global.inNarrative == false)
	{
		global.inNarrative = true;
		obj_narrative.value = "G";
	}
	
	if (obj_narrative.value == "GE")
	{
		if (keyboard_check(vk_enter))
		{
			gameOver = true;
			game_end();
		}
	}
}