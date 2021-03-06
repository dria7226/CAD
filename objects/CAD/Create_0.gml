primary_colors = [c_red, c_olive, c_navy];
secondary_colors = [c_purple, c_lime, c_blue];

surfaces = [0,0,0];

last_mouse_x = 0;
last_mouse_y = 0;
mouse_scaling = 0.01;

previous_mode = 0;
mode = 1;
modeling_submode = 0;

mode_pitch = [0,0,0];
mode_yaw = [0,0,0];

timers = ds_map_create();

//renderer
gpu_set_tex_filter(true);
gpu_set_cullmode(cull_counterclockwise);
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vertex_format = vertex_format_end();
global.clay_color = [0.7294, 0.2117, 0.1922];
resize_routine();

Background.surface = surface_create(CAD.w_width, CAD.w_height);

for(var i = 0; i < 3; i++)
{
	surfaces[i] = surface_create(CAD.w_width, CAD.w_height);
}

shader_set(standard);