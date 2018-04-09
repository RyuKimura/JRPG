/// @description Insert description here
// You can write your code in this editor

// declare globals

globalvar player, enemy, playerPartySize, enemyPartySize;

// Player Start Positions

startPositionPlayerX[1] = 240;
startPositionPlayerY[1] = 240;

startPositionPlayerX[2] = 320;
startPositionPlayerY[2] = 360;

startPositionPlayerX[3] = 240;
startPositionPlayerY[3] = 480;

// Enemy Start Positions

startPositionEnemyX[1] = 240*3;
startPositionEnemyY[1] = 240;

startPositionEnemyX[2] = 320*2;
startPositionEnemyY[2] = 320;

startPositionEnemyX[3] = 320*2;
startPositionEnemyY[3] = 400;

startPositionEnemyX[4] = 240*3;
startPositionEnemyY[4] = 480;

playerPartySize = 3;

enemyPartySize = irandom_range(1,4);

for(i = 1; i <= playerPartySize; i++)
{
	player[i] = instance_create_depth(startPositionPlayerX[i],startPositionPlayerY[i],100,idiot_obj);
}

for(i = 1; i <= enemyPartySize; i++)
{
	enemy[i] = instance_create_depth(startPositionEnemyX[i],startPositionEnemyY[i],100,rock_obj);
}