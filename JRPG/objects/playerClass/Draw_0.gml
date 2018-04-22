/// @description Insert description here
// You can write your code in this editor

spr = character + "_spr";

spr_ind = asset_get_index(spr);

draw_sprite_ext(spr_ind,0,x,y,1,1,0,c_white,1);

//draw_text(x-8,y-32,"(" + string(xstart) + "," + string(ystart) + ")");

if(dead == true)
{
	draw_sprite(dead_spr,0,x,y);
}