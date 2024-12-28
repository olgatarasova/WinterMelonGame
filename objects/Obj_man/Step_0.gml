
xsp=0

if ysp<4
{ysp+=0.1}
	

if keyboard_check(vk_left)
{ if !place_meeting(x+(1*dir),y,Obj_test_platform) and (global.xcol!=2)
{
	xsp=-1*dir
	image_xscale=-1*dir
}}

if keyboard_check(vk_right)
{ if !place_meeting(x-(1*dir),y,Obj_test_platform) and (global.xcol!=1)
{
	xsp=1*dir
	image_xscale=1*dir
}}

if place_meeting(x,y+1,Obj_test_platform) or global.ycol==0
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
	global.ycol=1
}
	

if place_meeting(x+(1*dir),y,Obj_test_platform)
{
	global.xcol=1
}
else 
{	if place_meeting(x-(1*dir),y,Obj_test_platform)
{
	global.xcol=2
}
	else
{	
	global.xcol=0
}}
move_and_collide(xsp,ysp,Obj_test_platform)


