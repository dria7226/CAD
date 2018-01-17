if(enabled)
{
	var back_button_pressed = point_distance(x,y,mouse_x, mouse_y) <= normal_size;
	if(back_button_pressed)
	{
		script_execute(asset_get_index("selection_wheel_go_back"));
	}
	else
	{
		var item_group = groups[ds_stack_top(stack)];
		for(var item = 0; item < array_length_1d(item_group); item++)
		{
			if(items[item_group[item], SW_CLOSENESS] <= 1/array_length_1d(item_group))
			{
				script_execute(asset_get_index(items[item_group[item], SW_ACTION]));
			}
		}
	}
}