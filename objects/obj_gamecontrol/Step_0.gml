
//condição de vitória
if (global.bricksLeft == 0)
{
	finishgame()
	room_restart()
}

//condição de derrota
if (!instance_exists(obj_ball))
{
	finishgame()
	room_restart()
}

timer--
if (timer==0)
{
	time_sec++
	timer = room_speed*1
}
if (time_sec == 60)
{
	time_sec = 0
	time_min++
}