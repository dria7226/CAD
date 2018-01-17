surface_set_target(CAD.surfaces[0]);

shader_set_uniform_i(shader_get_uniform(standard, "mode"), 2);

for(var i = 0; i < Code.graph_nodes; i++)
{
	shader_set_uniform_f(shader_get_uniform(standard, "position"), Code.graph_nodes);
	shader_set_uniform_f(shader_get_uniform(standard, "primary_color"), color_get_red(CAD.primary_colors[CAD.mode]),color_get_green(CAD.primary_colors[CAD.mode]),color_get_blue(CAD.primary_colors[CAD.mode]));
	vertex_submit(Code.cube_vertices, pr_trianglelist, -1);
}
surface_reset_target()