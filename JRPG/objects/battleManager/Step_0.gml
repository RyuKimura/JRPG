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

turnNumber = currentNum;

while(current == noone)
{	
	if(current == noone)
	{
		turnNumber += 1*dir;
	}
	
	if(turnNumber > totalPartySize)
	{
		turnNumber = 1;
	}
	
	if(turnNumber < 1)
	{
		turnNumber = totalPartySize;
	}
	
	current = turnOrder[turnNumber];
}

if(current != noone)
{
	if(turnNumber > totalPartySize)
	{
		turnNumber = 1;
	}
	
	if(turnNumber < 1)
	{
		turnNumber = totalPartySize;
	}
	
	current = turnOrder[turnNumber];
}

turn = current.type;

if(turn == "player")
{	
	// Menu Buttons //
	
	MenuButtons();
	
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
	
	partySize = playerPartySize;
	
	// Targeting
	
	PlayerTargeting();
	
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
