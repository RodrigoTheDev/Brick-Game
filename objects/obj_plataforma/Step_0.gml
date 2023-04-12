#region controles
var key_left = keyboard_check(vk_left)
var key_right= keyboard_check(vk_right)
#endregion

hspd = (key_right - key_left) * spd

if(place_meeting(x+hspd, y, obj_parede))
{
	hspd = 0
}

x += hspd

//size
image_xscale = size