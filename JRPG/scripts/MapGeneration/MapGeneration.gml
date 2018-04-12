///MapGeneration(wallObject,numTunnels,maxTunnelLength,array, ItemFrequency, maxItems)

ds_list_clear(argument3);
instance_destroy(Item);
instance_destroy(Wall);
instance_destroy(entrance);
instance_destroy(goal);

randomize();

var gap = 32;


var randX = floor(random(room_width/gap)) * gap;
var randY = floor(random(room_height/gap))* gap;

while(true){
	var c = 0;
	var cc = 0;
	if(randX <= 0 || randX >= room_width - gap) {
		randX = floor(random(room_width/gap)) * gap;
	} else c = 1;
	if(randY  <= 0 || randY >= room_height - gap){
		randY = floor(random(room_height/gap))* gap;
	} else cc = 1;
	
	if(c == 1 && cc == 1) break;
}

var strt = instance_create_depth(randX, randY, 0 , argument0);
ds_list_add(argument3,strt);
instance_create_depth(randX, randY, -6 , entrance);

while(argument1 != 0){
	var len = floor(random_range(1,argument2));
	var dir = choose(0,1,2,3); // 0 = up	 1 = down  2 = left  3 = right
	
	for(i = len; i != 0; i--){
		switch(dir){
			case 0: if((randY - gap) <= 0) break else randY -= gap break;
			case 1: if((randY + gap) >= room_height - gap) break else randY += gap break;
			case 2: if((randX - gap) <= 0) break else randX -= gap break;
			case 3: if((randX + gap) >= room_width - gap) break else randX += gap break;
			default: break;
		}
		if(!position_meeting(randX,randY,argument0)){
			var temp = instance_create_depth(randX, randY, 0 , argument0);
			ds_list_add(argument3,temp);
		}
		else{
			var randPos = argument3[| floor(random(ds_list_size(argument3)))];
			randX = randPos.x;
			randY = randPos.y;
			continue;
		}
	}
	argument1--;
}

var randPos = argument3[| floor(random(ds_list_size(argument3)))];

var finish = instance_create_depth(randPos.x, randPos.y, -5 , goal);

while(true){
	if(position_meeting(finish.x,finish.y,entrance)){
		randPos = argument3[| floor(random(ds_list_size(argument3)))];
		finish.x = randPos.x;
		finish.y = randPos.y;
	}
	else break;
}

ItemGeneration(argument3,argument4, argument5);