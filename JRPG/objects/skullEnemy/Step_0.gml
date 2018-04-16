/// @description Insert description here
// You can write your code in this editor

switch(AIState){
	case "moving": 
			if(mp_potential_step_object(destination.x,destination.y,2,blockade)) {
				destination = mapData.array[| floor(random(ds_list_size(mapData.array)))];
			}
			break;
	
	
	case "chase":	
			break;
			
	default: 
			break;
}