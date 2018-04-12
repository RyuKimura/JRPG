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

if(actionType == "target")
{
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