
event_inherited();

//Sets random uncontrollablesness
if (evolutionProgress > 0)
{
	randVal = irandom(randValMax + evolutionProgress);
}

// Damage test
if (keyboard_check(ord("Y")))
{
	healthLeft--;
}

if (keyboard_check(ord("E")) && (evolutionProgress == evolutionProgressGoal))
{
	playerSpecies = "orc";
	Evolve();
	
	evolutionProgress = 0;
}


if keyboard_check(ord("W") && (randVal < 4)){ // 90 degree angle to move up
	attacking = false;
	move_dir = 90
	if keyboard_check(ord("A")){
		move_dir += 45				// +45 for up-left
	}else
	if keyboard_check(ord("D")){
		move_dir -= 45				// -45 for up-right
	}
} else
if keyboard_check(ord("S") && (randVal < 4)){
	attacking = false;
	move_dir = 270					// 270 degree angle to move down
	if keyboard_check(ord("A")){
		move_dir -= 45				// -45 for down-left
	}else
	if keyboard_check(ord("D")){
		move_dir += 45				// +45 for down-right
	}
}else{
	if keyboard_check(ord("A")){
		move_dir = 180				// 180 degree angle to move left
	}else
	if keyboard_check(ord("D")){
		move_dir = 0				// 0 degrees to move right
	}
}
hspd = lengthdir_x(mspd,move_dir)	// find x&y speed by using angle and base speed
vspd = lengthdir_y(mspd,move_dir)

if keyboard_check(ord("W") && (randVal < 4))
or keyboard_check(ord("A") && (randVal < 4))
or keyboard_check(ord("S") && (randVal < 4))
or keyboard_check(ord("D") && (randVal < 4)){		// if pressing any move keys, move player!
	MoveCollide()
}

if (!attacking && image_blend == c_red)
{
	image_blend = -1;
}

if (keyboard_check(vk_space) && (randVal < 4))
{
	attacking = true;
	
	alarm[1] = 20;
}