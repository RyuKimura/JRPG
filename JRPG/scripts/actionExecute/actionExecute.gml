numberStats = instance_create_depth(currentSelect.x,currentSelect.y-32,-100,dmgNum);
numberStats.int = int;
numberStats.type = moveType;

switch(moveType)
{
	case "damage":
		currentSelect.hp -= int;
		break;
		
	case "heal":
		currentSelect.hp += int;
		break;	
}