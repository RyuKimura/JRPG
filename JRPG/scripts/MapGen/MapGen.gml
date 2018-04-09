///MapGen(wallObject,numTunnels,maxTunnelLength)

instance_destroy(Wall);

randomize();

var array;
var gap = 32;

for(xx = 0; xx < room_width; xx += gap){
	for(yy = 0; yy < room_height; yy += gap){
		var temp = instance_create_depth(xx,yy,0,argument0);
		array[xx/gap , yy/gap] = temp;
		temp.xxx = string(xx/gap) + string(yy/gap);
	}
}

var randX = floor(random(array_length_1d(array)));
var randY = floor(random(array_height_2d(array)));

while(true){
	var c = 0;
	var cc = 0;
	if(randX * gap <= 0 || randX * gap >= room_width - gap) {
		randX = floor(random(array_length_1d(array)));
	} else c = 1;
	if(randY * gap <= 0 || randY * gap >= room_height - gap){
		randY = floor(random(array_height_2d(array)));
	} else cc = 1;
	
	if(c == 1 && cc == 1) break;
}

instance_destroy(array[randX,randY]);

while(argument1 != 0){
	var len = floor(random_range(1,argument2));
	var dir = choose(0,1,2,3); // 0 = up	 1 = down  2 = left  3 = right
	for(i = len; i != 0; i--){
		switch(dir){
			case 0: if((randY - 1) * gap <= 0) break else randY-- break;
			case 1: if((randY + 1) * gap >= room_height - gap) break else randY++ break;
			case 2: if((randX - 1) * gap <= 0) break else randX-- break;
			case 3: if((randX + 1) * gap >= room_width - gap) break else randX++ break;
			default: break;
		}
		instance_destroy(array[randX,randY]);
	}
	argument1--;
}