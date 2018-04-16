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
		
		if(currentSelect.dead == true)
		{
			num += 1;
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
	/*
		while(current == noone)
		{	
			if(current == noone)
			{
				currentNum += 1*dir;
			}
			
			if(currentNum > partySize)
			{
				currentNum = 1;
			}
			
			if(currentNum < 1)
			{
				currentNum = partySize;
			}
			
			current = player[currentNum];
		}
		
		if(current != noone)
		{
			if(currentNum > partySize)
			{
				currentNum = 1;
			}
			
			if(currentNum < 1)
			{
				currentNum = partySize;
			}
			
			current = player[currentNum];
		}
		*/
		break;
}