/// @description Insert description here
// You can write your code in this editor

if(active == true)
{
for(i = 1; i <= totalPartySize; i++)
{
	if(turnOrder[i] != noone)
	{
	draw_text(320,32+(32*i),"Turn " + string(i) + ": " + string(turnOrder[i].name) + " - Agility: " + string(turnOrder[i].agi));
	}
	else
	{
		draw_text(320,32+(32*i),"Turn " + string(i) + ": noone");
	}
}

}