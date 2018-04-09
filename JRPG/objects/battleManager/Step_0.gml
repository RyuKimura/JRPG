/// @description Insert description here
// You can write your code in this editor

// Item Update

for(i = 0; i < maxItems; i++)
{
menu[2,i] = item[i,0];
}

if(current != noone)
{
	for(i = 0; i < maxItems; i++)
	{
	menu[1,i] = current.spell[i,0];
	}
}

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
			extraRoom = 32;
			lastMenuPos = menuNum;
			menuType = menuNum;
			menuNum = 0;
			break;
			
		case "Attack":
			actionType = "target";
			actionTarget = "enemy";
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
			extraRoom = 0;
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
	
	switch(actionTarget)
	{	
		case "enemy":
			targetPartySize = enemyPartySize;
			while(currentSelect == noone)
			{	
				if(currentSelect == noone)
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
				
				currentSelect = enemy[num];
			}
			
			if(currentSelect != noone)
			{
				if(num > partySize)
				{
					num = 1;
				}
				
				if(num < 1)
				{
					num = partySize;
				}
				
				currentSelect = enemy[num];
			}
			break;
			
		case "friend":
			targetPartySize = playerPartySize;
			while(currentSelect == noone)
			{	
				if(currentSelect == noone)
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
				
				currentSelect = player[num];
			}
			
			if(currentSelect != noone)
			{
				if(num > partySize)
				{
					num = 1;
				}
				
				if(num < 1)
				{
					num = partySize;
				}
				
				currentSelect = player[num];
			}
			break;	
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