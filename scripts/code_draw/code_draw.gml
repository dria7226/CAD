shader_set_uniform_i(shader_get_uniform(standard, "mode"), 1);
shader_set_uniform_f(shader_get_uniform(standard, "camera_position"), Camera.X, Camera.Y, Camera.Z);
shader_set_uniform_f(shader_get_uniform(standard, "camera_pitch"), Camera.pitch);
shader_set_uniform_f(shader_get_uniform(standard, "camera_yaw"), Camera.yaw);
shader_set_uniform_f(shader_get_uniform(standard, "near_clip"), 0.35);
//shader_set_uniform_f(shader_get_uniform(standard, "far_clip"), 10000.0);
shader_set_uniform_f(shader_get_uniform(standard, "screen_ratio"), CAD.w_height/CAD.w_width);

for(var i = 0; i < ds_list_size(Code.graph_nodes); i++)
{
	var node = Code.graph_nodes[|i];
	shader_set_uniform_f(shader_get_uniform(standard, "offset"), node[0], node[1], node[2]);
	shader_set_uniform_f(shader_get_uniform(standard, "v_a"), color_get_red(CAD.primary_colors[CAD.mode]),color_get_green(CAD.primary_colors[CAD.mode]),color_get_blue(CAD.primary_colors[CAD.mode]));
	
	var texture = -1;
	
	shader_set_uniform_i(shader_get_uniform(standard, "texture_ID"), texture);
	
	vertex_submit(Code.cube, pr_trianglelist, texture);
	
	shader_set_uniform_i(shader_get_uniform(standard, "texture_ID"), 0);
}

for(var i = 0; i < ds_list_size(Code.comment_nodes); i++)
{
	var node = Code.comment_nodes[|i];
	shader_set_uniform_f(shader_get_uniform(standard, "offset"), node[0], node[1], node[2]);
	shader_set_uniform_f(shader_get_uniform(standard, "v_a"), color_get_red(CAD.primary_colors[CAD.mode]),color_get_green(CAD.primary_colors[CAD.mode]),color_get_blue(CAD.primary_colors[CAD.mode]));
	
	var texture = -1;
	
	shader_set_uniform_i(shader_get_uniform(standard, "texture_ID"), texture);
	
	vertex_submit(Code.cube, pr_trianglelist, texture);
	
	shader_set_uniform_i(shader_get_uniform(standard, "texture_ID"), 0);
}