/// @description Insert description here
// You can write your code in this editor


totalOrcs = 0;

poss_destinations = [[127, 194], [192, 257], [145, 322], [264, 314], [308, 193], [439, 167], [393, 259], [455, 307], [530, 260], [550, 160]];
num_des = 10;

global.inNarrative = true;

gameOver = false;


function getDestination(){
	randomize()
	random_location = poss_destinations[irandom(num_des-1)]
	des_x = random_location[0]
	des_y = random_location[1]
	
}

