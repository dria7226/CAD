//keyboard check
if(keyboard_check(vk_tab))
{
	Selection_Wheel.enabled = true;
	Selection_Wheel.x = window_get_width()/2;
	Selection_Wheel.y = window_get_height()/2;
	
	ds_stack_clear(Selection_Wheel.stack);
	ds_stack_push(Selection_Wheel.stack, Selection_Wheel.group_indices[? "Mode_Switch"]);
}

//mouse check
if(mouse_check_button(mb_left) && !Selection_Wheel.enabled)
{
			Camera.pitch += (mouse_x - last_mouse_x)*mouse_scaling;
			Camera.yaw += (mouse_y - last_mouse_y)*mouse_scaling;
			Camera.yaw = min(pi/2, Camera.yaw); Camera.yaw = max(-pi/2, Camera.yaw);
	
			//yaw rotation
			Camera.Z = sin(pi + Camera.yaw);
	
			//pitch rotation
			Camera.Y = sin(pi + Camera.pitch)*cos(pi + Camera.yaw);
			Camera.X = cos(pi + Camera.pitch)*cos(pi + Camera.yaw);
	
			//move back
			Camera.X = Camera.X*Camera.focus_distance + Camera.focus_x;
			Camera.Y = Camera.Y*Camera.focus_distance + Camera.focus_y;
			Camera.Z = Camera.Z*Camera.focus_distance + Camera.focus_z;
}

last_mouse_x = mouse_x;
last_mouse_y = mouse_y;

//timer routine
for(var key = ds_map_find_first(timers); key != undefined; key = ds_map_find_next(timers, key))
{
	timers[? key]--;
	if(timers[? key] == 0) ds_map_delete(timers, key);
}