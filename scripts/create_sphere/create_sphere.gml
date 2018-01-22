var sphere = vertex_create_buffer();

vertex_begin(sphere, global.vertex_format);

var MAX = 32;
for(var angle = 0; angle < 2*pi; angle += 2*pi/MAX)
{
	var X_a = cos(angle)/2;
	var Y_a = sin(angle)/2;
	
	var X_b = cos(angle+2*pi/MAX)/2;
	var Y_b = sin(angle+2*pi/MAX)/2;
	
	//caps
	vertex_position_3d(sphere, X_a*sin(2*pi/MAX), Y_a*sin(2*pi/MAX), cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, 0, 0, 0.5);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, X_b*sin(2*pi/MAX), Y_b*sin(2*pi/MAX), cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
			
	vertex_position_3d(sphere, X_a*sin(2*pi/MAX), Y_a*sin(2*pi/MAX), -cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, X_b*sin(2*pi/MAX), Y_b*sin(2*pi/MAX), -cos(2*pi/MAX)/2);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	vertex_position_3d(sphere, 0, 0, -0.5);
	vertex_color(sphere, 0,1.0);
	vertex_texcoord(sphere, 0,0);
	
	for(var i = 2*pi/MAX; i < pi*(1 - 2/MAX); i+=2*pi/MAX)
	{	
		//body
		var Z_a = cos(i)/2;
		var Z_b = cos(i+2*pi/MAX)/2;
		
		vertex_position_3d(sphere, X_a*sin(i), Y_a*sin(i), Z_a);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, X_b*sin(i), Y_b*sin(i), Z_a);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, X_b*sin(i+2*pi/MAX), Y_b*sin(i+2*pi/MAX), Z_b);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		
		vertex_position_3d(sphere, X_a*sin(i+2*pi/MAX), Y_a*sin(i+2*pi/MAX), Z_b);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, X_a*sin(i), Y_a*sin(i), Z_a);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
		vertex_position_3d(sphere, X_b*sin(i+2*pi/MAX), Y_b*sin(i+2*pi/MAX), Z_b);
		vertex_color(sphere, 0,1.0);
		vertex_texcoord(sphere, 0,0);
	}
}

vertex_end(sphere);

ds_list_add(Modeling.triangle_groups,sphere);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);