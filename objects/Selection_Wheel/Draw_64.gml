#macro SW_fan_size 1.5

if(enabled)
{	
	shader_reset();
	
	var item_group = groups[ds_stack_top(stack)];
	var alloted_angle = 2*pi/array_length_1d(item_group);
	
	//draw fan
	draw_primitive_begin(pr_trianglelist);
	for(var item = 0; item < array_length_1d(item_group); item++)
	{	
		var p = CAD.primary_colors[CAD.mode], s = CAD.secondary_colors[CAD.mode];
		if(item_group == group_indices[? "Mode_Switch"])
		{
			p = CAD.primary_colors[item];
			s = CAD.secondary_colors[item];
		}
		draw_vertex_color(x, y, p, 1 - items[item_group[item], SW_CLOSENESS]);
		draw_vertex_color(	x + cos(items[item_group[item], SW_ANGLE] + alloted_angle/2)*SW_fan_size*items[item_group[item], SW_DISTANCE],
							y - sin(items[item_group[item], SW_ANGLE] + alloted_angle/2)*SW_fan_size*items[item_group[item], SW_DISTANCE],p,0.0);
		draw_vertex_color(	x + cos(items[item_group[item], SW_ANGLE] - alloted_angle/2)*SW_fan_size*items[item_group[item], SW_DISTANCE],
							y - sin(items[item_group[item], SW_ANGLE] - alloted_angle/2)*SW_fan_size*items[item_group[item], SW_DISTANCE],p,0.0);
	
		draw_line_color(x,y,
						x+cos(items[item_group[item], SW_ANGLE] + alloted_angle/2)*SW_fan_size*items[item_group[item], SW_DISTANCE],
						y-sin(items[item_group[item], SW_ANGLE] + alloted_angle/2)*SW_fan_size*items[item_group[item], SW_DISTANCE],
						CAD.secondary_colors[CAD.mode],c_dkgray);
	}
	draw_primitive_end();
	
	for(var item = 0; item < array_length_1d(item_group); item++)
	{			
		//draw circle
		draw_set_color(make_colour_rgb(1.0,0.2,0.2));
		draw_circle(x + items[item_group[item], SW_X] + items[item_group[item], SW_SIZE]*0.1, y - items[item_group[item], SW_Y] + items[item_group[item], SW_SIZE]*0.1, items[item_group[item], SW_SIZE],false);
		if(items[item_group[item], SW_CLOSENESS] <= 1/array_length_1d(item_group))	
			items[item_group[item], SW_OFFSET] = items[item_group[item], SW_SIZE]*0.3;
		else
			items[item_group[item], SW_OFFSET] = 0;
			
		draw_set_color(CAD.secondary_colors[CAD.mode]);
		draw_circle(x + items[item_group[item], SW_X] - items[item_group[item], SW_OFFSET]*(1 - items[item_group[item], SW_CLOSENESS]), y - items[item_group[item], SW_Y] - items[item_group[item], SW_OFFSET]*(1 - items[item_group[item], SW_CLOSENESS]), items[item_group[item], SW_SIZE],false);
		draw_set_color(c_dkgray);
		draw_circle(x + items[item_group[item], SW_X] - items[item_group[item], SW_OFFSET]*(1 - items[item_group[item], SW_CLOSENESS]), y - items[item_group[item], SW_Y] - items[item_group[item], SW_OFFSET]*(1 - items[item_group[item], SW_CLOSENESS]), items[item_group[item], SW_SIZE]*(1-circle_thickness),false);
					
		//draw icon
		draw_sprite_stretched(	icons,item_group[item],
								x + items[item_group[item], SW_X] - items[item_group[item], SW_OFFSET]*(1 - items[item_group[item], SW_CLOSENESS]) - items[item_group[item], SW_SIZE]*0.65,
								y - items[item_group[item], SW_Y] - items[item_group[item] , SW_OFFSET]*(1 - items[item_group[item], SW_CLOSENESS]) - items[item_group[item], SW_SIZE]*0.65,
								items[item_group[item], SW_SIZE]*1.4,
								items[item_group[item], SW_SIZE]*1.4);
	}
	
	draw_set_color(c_black);
	draw_circle(x + normal_size*0.1, y + normal_size*0.1,normal_size,false);
	draw_set_color(CAD.secondary_colors[CAD.mode]);
	draw_circle(x, y, normal_size,false);
	draw_set_color(c_dkgray);
	draw_circle(x, y, normal_size*(1-circle_thickness),false);
	
	var length = cos(pi/2)*normal_size*0.8;
	draw_sprite_stretched(back_button,ds_stack_size(stack) > 1,x-0.6*normal_size,y-0.6*normal_size,1.4*normal_size,1.4*normal_size);

	
	//draw text
	for(var item = 0; item < array_length_1d(item_group); item++)
	{
		if(items[item_group[item], SW_CLOSENESS] <= 1/array_length_1d(item_group))
		{
			draw_set_halign(fa_center);
			draw_set_color(c_white);
			draw_text(x + items[item_group[item], SW_X] - 1, y - items[item_group[item], SW_Y] + items[item_group[item], SW_SIZE]*1.2 - 1, items[item_group[item], SW_TEXT]);
			draw_text(x + items[item_group[item], SW_X] - 1, y - items[item_group[item], SW_Y] + items[item_group[item], SW_SIZE]*1.2 + 1, items[item_group[item], SW_TEXT]);
			draw_text(x + items[item_group[item], SW_X] + 1, y - items[item_group[item], SW_Y] + items[item_group[item], SW_SIZE]*1.2 - 1, items[item_group[item], SW_TEXT]);
			draw_text(x + items[item_group[item], SW_X] + 1, y - items[item_group[item], SW_Y] + items[item_group[item], SW_SIZE]*1.2 + 1, items[item_group[item], SW_TEXT]);
			draw_set_color(c_black);
			draw_text(x + items[item_group[item], SW_X], y - items[item_group[item], SW_Y] + items[item_group[item], SW_SIZE]*1.2, items[item_group[item], SW_TEXT]);
			
		}
	}
	
	shader_set(standard);
}