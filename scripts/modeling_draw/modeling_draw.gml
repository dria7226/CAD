shader_set_uniform_i(shader_get_uniform(standard, "mode"), 1);
shader_set_uniform_i(shader_get_uniform(standard, "v_a"), 0.7294, 0.2117, 0.1922);
shader_set_uniform_f(shader_get_uniform(standard, "camera_position"), Camera.X, Camera.Y, Camera.Z);
shader_set_uniform_f(shader_get_uniform(standard, "camera_pitch"), Camera.pitch);
shader_set_uniform_f(shader_get_uniform(standard, "camera_yaw"), Camera.yaw);
shader_set_uniform_f(shader_get_uniform(standard, "near_clip"), 0.35);
//shader_set_uniform_f(shader_get_uniform(standard, "far_clip"), 10000.0);
shader_set_uniform_f(shader_get_uniform(standard, "screen_ratio"), CAD.w_height/CAD.w_width);

for(var group = 0; group < ds_list_size(Modeling.triangle_groups); group++)
{
	vertex_submit(Modeling.triangle_groups[|group], pr_trianglelist, -1);
}