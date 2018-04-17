/// @description Insert description here
// You can write your code in this editor
if(show_question("Move to next dungeon?")){
	MapGeneration(Wall,200,4,Generation.array, 1, 5, 10, 5);
}
else{
	x = xprevious;
	y = yprevious;
}