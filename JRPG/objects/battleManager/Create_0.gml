/// @description Insert description here
// You can write your code in this editor

current = noone;

currentSelect = noone;

turn = "player";

turnNumber = 1;

num = 1;

dir = 1;

chooseNum = 1;

actionType = "nothing";

actionTarget = "nothing";

action = "nothing"

dmg = 0;

heal = 0;

// Action Menu

menuMax = 0;

menuNum = 0;

lastMenuPos = 0;

extraRoom = 0;

// Menu Types //
/*

Base - 0
Spell - 1
Item - 2

*/

menuType = 0;

menu[0,0] = "Attack";
menu[0,1] = "Spells";
menu[0,2] = "Items";
menu[0,3] = "Block";
menu[0,4] = "Flee";

/*
menu[1,0] = "Fire Spell";
menu[1,1] = "Water Spell";
menu[1,2] = "Air Spell";
menu[1,3] = "Earth Spell";
menu[1,4] = "Heal Spell";
*/

/*
menu[2,0] = "Health Potion";
menu[2,1] = "Mana Potion";
menu[2,2] = "Revive Potion";
menu[2,3] = "Farcaster";
menu[2,4] = "Large Barrel Bomb";
*/

