/// @description Insert description here
// You can write your code in this editor


right = keyboard_check(ord("D"));
left = keyboard_check(ord ("A"));
hveloc = (right - left) * veloc;

if (hveloc != 0 and start == false)
{
	start = true;
	image_speed = 1;
}

if(start == true)
{
	if (right)
		image_xscale =  1;
	if (left) 
		image_xscale = -1;
	if(sit == false and hveloc != 0) {
		image_speed = 1;
		if(image_index == 2)
			image_speed = 0;
		x += hveloc;
	}
	else if (hveloc != 0 and sit == true){
		sit = false;
		time = 0;
	}
	else if(time >= 60 and hveloc == 0) {
		image_speed = -1;
		if(image_index == 0)
			image_speed = 0;
		sit = true;
	}
	time += 1;
}

