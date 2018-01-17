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
vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
global.vertex_format = vertex_format_end();
resize_routine();

Background.surface = surface_create(CAD.w_width, CAD.w_height);

for(var i = 0; i < 3; i++)
{
	surfaces[i] = surface_create(CAD.w_width, CAD.w_height);
}