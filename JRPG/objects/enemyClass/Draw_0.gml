/// @description Insert description here
// You can write your code in this editor

spr = character + "_spr";

spr_ind = asset_get_index(spr);

draw_sprite_ext(spr_ind,0,x,y,1,1,0,c_white,1);

draw_text(x,y+32,"HP: " + string(hp));