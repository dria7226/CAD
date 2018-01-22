if(buffer_exists(Background.vertex_buffer))
buffer_delete(Background.vertex_buffer);

Background.vertex_buffer = vertex_create_buffer();
Background.spacing = CAD.w_height/9;

vertex_begin(Background.vertex_buffer, global.vertex_format);
for(var i = -1; i < CAD.w_width/Background.spacing+1; i++)
{
	for(var j = -1; j < CAD.w_height/Background.spacing+1; j++)
	{
		var X = (i - j%2/2)*Background.spacing;
		var Y = (j+0.5)*Background.spacing;
		var width = Background.spacing/9;
		vertex_position_3d(Background.vertex_buffer, X			,Y + (j%2*2-1)*width	,1.0);
		vertex_color(Background.vertex_buffer, 0, 1.0);
		vertex_texcoord(Background.vertex_buffer, 0,0);
		vertex_position_3d(Background.vertex_buffer, X + (1-2*(j%2))*width,Y			,1.0);
		vertex_color(Background.vertex_buffer, 0, 1.0);
		vertex_texcoord(Background.vertex_buffer, 0,0);
		vertex_position_3d(Background.vertex_buffer, X - (1-2*(j%2))*width,Y			,1.0);
		vertex_color(Background.vertex_buffer, 0, 1.0);
		vertex_texcoord(Background.vertex_buffer, 0,0);
	}
}
vertex_end(Background.vertex_buffer);