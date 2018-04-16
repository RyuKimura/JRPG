///enemyGen(array, enenmyFrequency, maxEnemy)

randomize();

var enemyMax = 0;

for(i = 0; i <= ds_list_size(argument0); i++){
	if(enemyMax >= argument2) break;
	if(floor(random(100)) <= argument1){
		var temp = argument0[|i];
		if(abs(point_distance(entrance.x,entrance.y,temp.x,temp.y)) > 150) {
			var enem = instance_create_depth(temp.x,temp.y,-6,skullEnemy);
			enemyMax++;
		}
	}
}