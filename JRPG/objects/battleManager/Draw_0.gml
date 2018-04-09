/// @description Insert description here
// You can write your code in this editor

squareDist = 52;

if(current != noone)
{
	draw_sprite(point_spr,0,current.x-16,current.y-48);
}

draw_text(32,32,"Menu Count - " + string(menuMax));

draw_rectangle(32,480-32,128,room_height-32,true);

for(i = 0; i < menuMax; i++)
{
	draw_circle(((128)/2)+16,(480+(squareDist*(i+1))-48),24,true);
	menuIconX[i] = ((128)/2)+16;
	menuIconY[i] = (480+(squareDist*(i+1))-48);
}

if(menuNum >= 0 and menuNum < menuMax)
{
	draw_text(32,64,"Menu = " + string(menuType));
	
	draw_text(32,96,"Action = " + string(menu[menuType,menuNum]));
	
	draw_circle_color(menuIconX[menuNum],menuIconY[menuNum],24,c_yellow,c_yellow,false);
}