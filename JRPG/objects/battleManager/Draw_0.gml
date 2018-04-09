/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);

squareDist = 52;

if(current != noone)
{
	draw_sprite(point_spr,0,current.x-16,current.y-48);
}

draw_text(32,32,"Menu Count - " + string(menuMax));

draw_rectangle(32,480-32,128,room_height-32,true);

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