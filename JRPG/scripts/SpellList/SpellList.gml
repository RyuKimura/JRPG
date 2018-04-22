switch(menu[1,menuNum])
{
	case "Agi":
	case "Zio":
	case "Garu":
	case "Bufu":
		int = round((10*current.int)*0.75);
		moveType = "damage";
		break;
		
	case "Dia":
		int = round((15*current.int)*0.25);
		moveType = "heal";
		break;	
}