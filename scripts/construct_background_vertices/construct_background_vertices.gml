if(buffer_exists(Background.vertex_buffer))
buffer_delete(Background.vertex_buffer);

Background.vertex_buffer = vertex_create_buffer();
Background.spacing = CAD.w_height/9;

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
var format = vertex_format_end();

vertex_begin(Background.vertex_buffer, format);
for(var i = -1; i < CAD.w_width/Background.spacing+1; i++)
{
	for(var j = -1; j < CAD.w_height/Background.spacing+1; j++)
	{
		var X = (i - j%2/2)*Background.spacing;
		var Y = (j+0.5)*Background.spacing;
		var width = Background.spacing/9;
		vertex_position_3d(Background.vertex_buffer, X			,Y + (j%2*2-1)*width	,1.0);
		vertex_normal(Background.vertex_buffer, 0,0,0);
		vertex_texcoord(Background.vertex_buffer, 0,0);
		vertex_position_3d(Background.vertex_buffer, X - width,Y			,1.0);
		vertex_normal(Background.vertex_buffer, 0,0,0);
		vertex_texcoord(Background.vertex_buffer, 0,0);
		vertex_position_3d(Background.vertex_buffer, X + width,Y			,1.0);
		vertex_normal(Background.vertex_buffer, 0,0,0);
		vertex_texcoord(Background.vertex_buffer, 0,0);
	}
}
vertex_end(Background.vertex_buffer);