// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckAttackCollide(enemyCheck, damageDealt)
{
	if (sprDirection == "up")
	{
		if ((y + sprite_get_height(spr_player_attack_up)) > enemyCheck.y)
		{
			enemyCheck.healthLeft -= damageDealt;
		}
	}
	else if (sprDirection == "left")
	{
		if ((x + sprite_get_width(spr_player_attack_right)) > enemyCheck.x)
		{
			enemyCheck.healthLeft -= damageDealt;
		}
	}
	else if (sprDirection == "right")
	{
		if ((x - sprite_get_width(spr_player_attack_right)) < enemyCheck.x)
		{
			enemyCheck.healthLeft -= damageDealt;
		}
	}
	else if (sprDirection == "down")
	{
		if ((y - sprite_get_height(spr_player_attack_down)) < enemyCheck.y)
		{
			enemyCheck.healthLeft -= damageDealt;
		}
	}
	
	if (enemyCheck.healthLeft == 0)
	{
		instance_destroy(enemyCheck);
		
		if (enemyCheck != obj_player)
		{
			obj_player.evolutionProgress++;
		}
	}
}