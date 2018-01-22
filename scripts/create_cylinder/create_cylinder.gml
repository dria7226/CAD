var cylinder = vertex_create_buffer();

vertex_begin(cylinder, global.vertex_format);

var MAX = 32;

for(var i = 0; i < MAX; i++)
{
	var X_a = cos(i*2*pi/MAX)/2;
	var Y_a = sin(i*2*pi/MAX)/2;
	
	var X_b = cos((i+1)*2*pi/MAX)/2;
	var Y_b = sin((i+1)*2*pi/MAX)/2;
	
	//caps
	vertex_position_3d(cylinder, X_b, Y_b,0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, X_a, Y_a,0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, 0, 0, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	vertex_position_3d(cylinder, X_a, Y_a,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, X_b, Y_b,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, 0, 0, -0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	//body
	vertex_position_3d(cylinder, X_a, Y_a,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, X_b, Y_b, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, X_b, Y_b,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
	vertex_position_3d(cylinder, X_b, Y_b, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, X_a, Y_a,-0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	vertex_position_3d(cylinder, X_a, Y_a, 0.5);
	vertex_color(cylinder, 0,1.0);
	vertex_texcoord(cylinder, 0, 0);
	
}

vertex_end(cylinder);

ds_list_add(Modeling.triangle_groups,cylinder);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);