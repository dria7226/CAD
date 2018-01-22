var cylinder = vertex_create_buffer();

vertex_begin(cylinder, global.vertex_format);

var MAX = 32;

var first_X = cos(0)/2;
var first_Y = sin(0)/2;
for(var i = 1; i <= MAX; i++)
{
	var second_X = cos(i*2*pi/MAX)/2;
	var second_Y = sin(i*2*pi/MAX)/2;
	
	//caps
	vertex_position_3d(cylinder, second_X, second_Y,0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, first_X, first_Y,0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, 0, 0, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	vertex_position_3d(cylinder, first_X, first_Y,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, second_X, second_Y,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, 0, 0, -0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	//body
	vertex_position_3d(cylinder, first_X, first_Y,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, second_X, second_Y, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, second_X, second_Y,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	vertex_position_3d(cylinder, second_X, second_Y, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, first_X, first_Y,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, first_X, first_Y, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	first_X = second_X;
	first_Y = second_Y;
	
}

vertex_end(cylinder);

ds_list_add(Modeling.triangle_groups,cylinder);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);