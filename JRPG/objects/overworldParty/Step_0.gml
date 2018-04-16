/// @description Insert description here
// You can write your code in this editor

vkLeft = -keyboard_check(vk_left);
vkRight = keyboard_check(vk_right);

vkUp = -keyboard_check(vk_up);
vkDown = keyboard_check(vk_down);

hspd = vkRight + vkLeft;
vspd = vkDown + vkUp;

x += hspd
y += vspd;

enemy = instance_nearest(x,y,skullEnemy)


if(distance_to_object(enemy) <= 8)
{
	instance_destroy(enemy);
	room_goto(playtest_room);
}