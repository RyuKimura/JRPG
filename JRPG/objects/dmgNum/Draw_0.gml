/// @description Insert description here
// You can write your code in this editor

switch(type)
{
	case "damage":
		draw_text_color(x,y,string(int),c_red,c_red,c_red,c_red,1);
		break;
		
	case "heal":
		draw_text_color(x,y,string(int),c_green,c_green,c_green,c_green,1);
		break;	
}