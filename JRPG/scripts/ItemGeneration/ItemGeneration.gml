///ItemGeneration(array, itemFrequency, itemMaxItems)

randomize();

var itemMax = 0;

for(i = 0; i <= ds_list_size(argument0); i++){
	if(itemMax >= argument2) break;
	if(floor(random(100)) <= argument1){
		var temp = argument0[|i];
		if(!position_meeting(temp.x,temp.y,entrance) && !position_meeting(temp.x,temp.y,goal)){
			instance_create_depth(temp.x,temp.y,-6,Item);
			itemMax++;
		}
	}
}