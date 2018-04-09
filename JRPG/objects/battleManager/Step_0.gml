/// @description Insert description here
// You can write your code in this editor

menuMax = array_length_2d(menu,0);

switch(menuNum)
{
	case -1:
		menuNum = menuMax-1;
		break;
	
	case menuMax:
		menuNum = 0;
		break;
}

if(keyboard_check_pressed(vk_space))
{
	switch(menu[menuType,menuNum])
	{
		case "Spells":
		case "Items":
			lastMenuPos = menuNum;
			menuType = menuNum;
			break;
			
		default: 
			action = menu[menuType,menuNum];
			break;
	}		
}

if(keyboard_check_pressed(vk_backspace))
{
	switch(menuType)
	{
		case 1:
		case 2:
			menuType = 0;
			menuNum = lastMenuPos;
			break;
	}
}

if(keyboard_check_pressed(vk_up))
{
	menuNum -= 1
}

if(keyboard_check_pressed(vk_down))
{
	menuNum += 1
}

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