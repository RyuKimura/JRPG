/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);

squareDist = 52;

if(current != noone)
{
	if(actionType == "nothing")
	{
		draw_sprite_ext(point_spr,0,current.x-48,current.y+16,1,1,90,c_white,1);
	}
	
	if(actionType == "target")
	{
		if(currentSelect != noone)
		{
			draw_sprite_ext(point_spr,0,currentSelect.x-16,currentSelect.y-64,1,1,0,c_white,1);
		}
	}
}

if(actionTarget == "enemy")
{
	draw_text(32,256,"Damage = " + string(dmg));
}
if(actionTarget == "friend")
{
	draw_text(32,256,"Heal = " + string(heal));
	draw_rectangle_color(190+(num*200),588,360+(num*200),670,c_green,c_green,c_green,c_green,true);
}

//draw_text(32,32,"Menu Count - " + string(menuMax));

draw_text(32,32,"Turn = " + string(turn));

draw_text(32,128,"Selected Action - " + string(action));

draw_text(32,160,"Target Type - " + string(actionTarget));

draw_text(32,192,"Turn Number = " + string(turnNumber));

draw_text(32,224,"Num = " + string(num));

if(turn == "player")
{
	draw_rectangle_color(190+(current.number*200),588,360+(current.number*200),670,c_yellow,c_yellow,c_yellow,c_yellow,true);
}

draw_rectangle(32,480-32,128+extraRoom,room_height-32,true);

for(i = 0; i < menuMax; i++)
{
	i_x = ((128)/2)+16;
	i_y = (480+(squareDist*(i+1))-48);

	draw_circle(i_x,i_y,24,true);
	//draw_sprite(select_icon_spr,0,i_x,i_y);
	sprIcon = menu[menuType,i] + "_icon_spr";
	sprIconInd = asset_get_index(sprIcon);
	
	if(sprIconInd != -1)
	{
		draw_set_alpha(1);
		draw_sprite_ext(sprIconInd,0,i_x,i_y,0.75,0.75,0,c_white,1);
	}
	
	switch(menuType)
	{
		case 2:
			draw_text(i_x+32,i_y,"x" + string(item[i,1]));
			break;
			
		case 1:
			if(current != noone)
			{
				draw_text(i_x+32,i_y,string(current.spell[i,1]) + "mp");
			}
			break;
	}
	
	menuIconX[i] = i_x;
	menuIconY[i] = i_y;
}

if(menuNum >= 0 and menuNum < menuMax)
{
	draw_text(32,64,"Menu = " + string(menuType));
	
	draw_text(32,96,"Action = " + string(menu[menuType,menuNum]));
	
	draw_set_alpha(0.25);
	draw_circle_color(menuIconX[menuNum],menuIconY[menuNum],24,c_yellow,c_yellow,false);
}

// Party UI

for(i = 1; i <= playerPartySize; i++)
{
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(200+(i*200),598,"Name: " + string(player[i].name));
	draw_text(200+(i*200),620,"HP: " + string(player[i].hp));
	draw_text(200+(i*200),642,"MP: " + string(player[i].mp));
}

draw_sprite_ext(point_spr,0,290,64+(32*turnNumber),1,1,90,c_white,1);