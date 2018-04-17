/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(overworldParty)){
	instance_create_depth(x,y,-100,overworldParty);
}else
{
	overworldParty.x = x;
	overworldParty.y = y;
}