///MapGen(wallObject)
randomize();

var array;

for(xx = 0; xx < 160; xx += 32){
	for(yy = 0; yy < 160; yy += 32){
		 var temp = instance_create_depth(xx,yy,0,argument0);
		array[xx/32 , yy/32] = temp;
		temp.xxx = string(xx/32) + string(yy/32);
	}
}

var randX = floor(random(array_length_1d(array)));
var randY = floor(random(array_height_2d(array)));

instance_destroy(array[randX,randY]);