/// @description Insert description here
// You can write your code in this editor

// Item Update

for(i = 0; i < maxItems; i++)
{
menu[2,i] = item[i,0];
}

if(current != noone)
{
	for(i = 0; i < current.maxSpells; i++)
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

switch(actionType)
{
	case "nothing":
		switch(menuType)
		{
			case 0:
				if(keyboard_check_pressed(vk_space))
				{
					switch(menu[0,menuNum])
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
							dmg = current.atk;
							action = menu[menuType,menuNum];
							break;	
					}
				}
				break;
				
			case 1:	
				if(keyboard_check_pressed(vk_space))
				{
					SpellDirectory();
					action = menu[menuType,menuNum];
				}
				break;
				
			case 2:	
				if(keyboard_check_pressed(vk_space))
				{
					switch(menu[2,menuNum])
					{					
						case "Attack":
							actionType = "target";
							actionTarget = "enemy";
							action = menu[menuType,menuNum];
							break;	
					}
				}
				break;	
		}
		break;
		
	case "target":
		switch(menuType)
		{
			case 1:
				if(keyboard_check_pressed(vk_space))
				{
					SpellList();
				}
				break;
			
		}
}


if(keyboard_check_pressed(vk_backspace))
{
	switch(menuType)
	{
		case 1:
		case 2:
			switch(actionType)
			{
				case "target":
					actionType = "nothing";
					actionTarget = "nothing";
					action = "nothing";
					dmg = 0;
					heal = 0;
					break;
					
				case "nothing":
					extraRoom = 0;
					menuType = 0;
					menuNum = lastMenuPos;
					break;
			}
			break;
			
		case 0:
			actionType = "nothing";
			actionTarget = "nothing";
			action = "nothing";
			dmg = 0;
			break;
	}
}

if(actionTarget == "nothing")
{
if(keyboard_check_pressed(vk_up))
{
	menuNum -= 1
}

if(keyboard_check_pressed(vk_down))
{
	menuNum += 1
}
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
				
				if(num > targetPartySize)
				{
					num = 1;
				}
				
				if(num < 1)
				{
					num = targetPartySize;
				}
				
				currentSelect = enemy[num];
			}
			
			if(currentSelect != noone)
			{
				if(num > targetPartySize)
				{
					num = 1;
				}
				
				if(num < 1)
				{
					num = targetPartySize;
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
				
				if(num > targetPartySize)
				{
					num = 1;
				}
				
				if(num < 1)
				{
					num = targetPartySize;
				}
				
				currentSelect = player[num];
			}
			
			if(currentSelect != noone)
			{
				if(num > targetPartySize)
				{
					num = 1;
				}
				
				if(num < 1)
				{
					num = targetPartySize;
				}
				
				currentSelect = player[num];
			}
			break;	
			
		case "nothing":
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
