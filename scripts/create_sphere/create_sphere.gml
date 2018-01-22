var sphere = vertex_create_buffer();

vertex_begin(sphere, global.vertex_format);

var MAX = 32;

var radius = 1;

var first_X = cos(0)/2*radius;
var first_Y = sin(0)/2*radius;
for(var angle = 2*pi/MAX; angle < 2*pi; angle += 2*pi/MAX)
{
	var second_X = cos(angle+2*pi/MAX)/2*radius;
	var second_Y = sin(angle+2*pi/MAX)/2*radius;
	
	//caps
	vertex_position_3d(sphere, first_X*sin(2*pi/MAX), first_Y*sin(2*pi/MAX), cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, 0, 0, 0.5);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, second_X*sin(2*pi/MAX), second_Y*sin(2*pi/MAX), cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
			
	vertex_position_3d(sphere, first_X*sin(2*pi/MAX), first_Y*sin(2*pi/MAX), -cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, second_X*sin(2*pi/MAX), second_Y*sin(2*pi/MAX), -cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, 0, 0, -0.5);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	
	var first_Z = cos(2*pi/MAX)/2*radius;
	for(var i = 2*2*pi/MAX; i < pi*(1 - 2/MAX); i += 2*pi/MAX)
	{	
		//body
		var second_Z = cos(i+2*pi/MAX)/2*radius;
		
		vertex_position_3d(sphere, first_X*sin(i), first_Y*sin(i), first_Z);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, second_X*sin(i), second_Y*sin(i), first_Z);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, second_X*sin(i+2*pi/MAX), second_Y*sin(i+2*pi/MAX), second_Z);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		
		vertex_position_3d(sphere, first_X*sin(i+2*pi/MAX), first_Y*sin(i+2*pi/MAX), second_Z);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, first_X*sin(i), first_Y*sin(i), first_Z);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, second_X*sin(i+2*pi/MAX), second_Y*sin(i+2*pi/MAX), second_Z);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		
		first_Z = second_Z;
	}
	
	first_X = second_X;
	first_Y = second_Y;
}

vertex_end(sphere);

ds_list_add(Modeling.triangle_groups,sphere);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);