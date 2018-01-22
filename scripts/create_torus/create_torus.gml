var torus = vertex_create_buffer();

vertex_begin(torus, global.vertex_format);

var MAX = 32;

var first_X = cos(0);
var first_Y = sin(0)  ;
for(var angle = 2*pi/MAX; angle <= 2*pi; angle += 2*pi/MAX)
{	
	var second_X = cos(angle);
	var second_Y = sin(angle);
	
	var first_Z = sin(0);
	for(var i = 2*pi/MAX; i <= 2*pi; i += 2*pi/MAX)
	{
		var second_Z = sin(i)/2;
		
		vertex_position_3d(torus, first_X*(cos(i)/2+1), first_Y*(cos(i)/2+1), first_Z);
		vertex_color(torus, 0, 1.0);
		vertex_texcoord(torus, 0,0);
		vertex_position_3d(torus, second_X*(cos(i+2*pi/MAX)/2+1), second_Y*(cos(i+2*pi/MAX)/2+1), second_Z);
		vertex_color(torus, 0, 1.0);
		vertex_texcoord(torus, 0,0);
		vertex_position_3d(torus, second_X*(cos(i)/2+1), second_Y*(cos(i)/2+1), first_Z);
		vertex_color(torus, 0, 1.0);
		vertex_texcoord(torus, 0,0);
		
		vertex_position_3d(torus, first_X*(cos(i+2*pi/MAX)/2+1), first_Y*(cos(i+2*pi/MAX)/2+1), second_Z);
		vertex_color(torus, 0, 1.0);
		vertex_texcoord(torus, 0,0);
		vertex_position_3d(torus, second_X*(cos(i+2*pi/MAX)/2+1), second_Y*(cos(i+2*pi/MAX)/2+1), second_Z);
		vertex_color(torus, 0, 1.0);
		vertex_texcoord(torus, 0,0);
		vertex_position_3d(torus, first_X*(cos(i)/2+1), first_Y*(cos(i)/2+1), first_Z);
		vertex_color(torus, 0, 1.0);
		vertex_texcoord(torus, 0,0);
		
		first_Z = second_Z;
	}
	
	first_X = second_X;
	first_Y = second_Y;
}
vertex_end(torus);

ds_list_add(Modeling.triangle_groups,torus);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);