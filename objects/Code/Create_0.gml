#macro c_create_cube $ffff00
#macro c_create_sphere $ffff01
#macro c_create_cylinder $ffff02
#macro c_create_torus $ffff03
#macro c_create_circle $ffff04
#macro c_create_custom_shape $ffff05
#macro c_move $ffff06
#macro c_rotate $ffff07
#macro c_scale $ffff08
#macro c_if $ffff09
#macro c_or $ffff0a
#macro c_and $ffff0b
#macro c_equals $ffff0c
#macro c_lessthan $ffff0d
#macro c_greaterthan $ffff0e
#macro c_union $ffff0f
#macro c_difference $ffff10
#macro c_intersection $ffff11
#macro c_plus $ffff12
#macro c_minus $ffff13
#macro c_multiply $ffff14
#macro c_divide $ffff15

graph_nodes = ds_list_create();

ds_list_add(graph_nodes, [0,0,0, 0]);

latest_variable_x = 0;
latest_variable_y = 5;
latest_variable_z = 0;

comment_nodes = ds_list_create();

cube = vertex_create_buffer();

vertex_begin(cube, global.vertex_format);

var width = 0.4;

vertex_position_3d(cube, -width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -width, -width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, -width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -width, width, width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, width, width, -width);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_end(cube);