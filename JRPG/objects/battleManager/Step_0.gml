/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_left))
{
	dir = -1;
	num += 1*dir
	
}

if(keyboard_check_pressed(vk_right))
{
	dir = 1;
	num += 1*dir
}

if(turn == "player")
{
	partySize = playerPartySize;
	
	while(current == noone)
	{	
		if(current == noone)
		{
			num += 1*dir;
		}
		
		if(num > partySize)
		{
			num = 1;
		}
		
		if(num < 1)
		{
			num = partySize;
		}
		
		current = player[num];
	}
	
	if(current != noone)
	{
		if(num > partySize)
		{
			num = 1;
		}
		
		if(num < 1)
		{
			num = partySize;
		}
		
		current = player[num];
	}
}

if(turn == "enemy")
{
	partySize = enemyPartySize;
	
	while(current == noone)
	{
		current = enemy[num];
		
		if(current == noone)
		{
			num += 1;
		}
		
		if(num > partySize)
		{
			num = 1;
		}
	}
}