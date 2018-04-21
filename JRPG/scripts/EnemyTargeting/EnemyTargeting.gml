enemyAction = irandom(2);

switch(enemyAction)
{
	case 0:
	case 1:
	case 2:
		target = irandom_range(1,playerPartySize);
		
		while(player[target].dead == true)
		{
			target = irandom_range(1,playerPartySize);
		}
		
		if(player[target].dead != true)
		{
			currentSelect = player[target];
			int = current.atk;
			moveType = "damage";
			actionExecute();
			nextTurn();
		}
		break;
		
	default:
		nextTurn();
		break;
	
}