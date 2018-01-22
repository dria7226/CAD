surface_set_target(surfaces[mode]);

shader_set_uniform_i(shader_get_uniform(standard, "mode"), 0);
draw_surface(Background.surface, 0,0);

background_draw();

switch(mode)
{
	case 0:
	code_draw();
	break;
	
	case 1:
	modeling_draw();
	break;
	
	case 2:
	animation_draw();
	break;
}

//shader_reset();

surface_reset_target();
shader_set_uniform_i(shader_get_uniform(standard, "mode"), 0);


if(ds_map_exists(timers, "mode_switch"))
{
	var start_x = previous_mode*w_width;
	var final_x = mode*w_width;
	
	for(var i = 0; i < 3; i++)
	draw_surface(surfaces[i], -start_x + (start_x - final_x)/30*(30-timers[?"mode_switch"]) + i*w_width,0);
}
else
draw_surface(surfaces[mode],0,0);