var cube = vertex_create_buffer();

var width = 1;
width /= 2;

vertex_begin(cube, global.vertex_format);

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

ds_list_add(Modeling.triangle_groups,cube);

var latest_node = Code.graph_nodes[|Code.graph_nodes];
ds_list_add(Code.graph_nodes, [latest_node[0], latest_node[1], latest_node[2]+1, c_create_cube]);
	
ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);