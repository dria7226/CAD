if(enabled)
{
	var item_group = groups[ds_stack_top(stack)];
	
	var alloted_angle = 2*pi/array_length_1d(item_group);
	
	//implement controller
	var picker_angle = point_direction(x,y,mouse_x,mouse_y);

	for(var item = 0; item < array_length_1d(item_group); item++)
	{
		items[item_group[item], SW_ANGLE] = -alloted_angle*item + pi/2;		
		items[item_group[item], SW_CLOSENESS] = sin(abs(angle_difference(items[item_group[item], SW_ANGLE]*180/pi, picker_angle)/180)*pi/2);
		if(point_distance(x,y,mouse_x,mouse_y) <= normal_size) items[item_group[item], SW_CLOSENESS] = 1;
		items[item_group[item], SW_DISTANCE] = normal_distance*(1.5-0.5*items[item_group[item], SW_CLOSENESS]);
		items[item_group[item], SW_SIZE] = normal_size*(1.5-0.5*items[item_group[item], SW_CLOSENESS]);
		items[item_group[item], SW_X] = cos(items[item_group[item], SW_ANGLE])*items[item_group[item], SW_DISTANCE];
		items[item_group[item], SW_Y] = sin(items[item_group[item], SW_ANGLE])*items[item_group[item], SW_DISTANCE];
	}
}