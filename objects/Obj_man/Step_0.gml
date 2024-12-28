
xsp=0

if ysp<4
{ysp+=0.1}
	

if keyboard_check(vk_left)
{
	xsp=-1*dir
	image_xscale=-1*dir
}

if keyboard_check(vk_right)
{
	xsp=1*dir;
	image_xscale=1*dir
}

if place_meeting(x,y+1,Obj_test_platform) or global.ycol=0
{
	ysp=0;
	if keyboard_check(vk_up)
	{

		ysp=-4	
	}
}
	
if place_meeting(x,y+1,Obj_test_platform)
{
	global.ycol=0
}

else
{
	global.ycol=1}


move_and_collide(xsp,ysp,Obj_test_platform)