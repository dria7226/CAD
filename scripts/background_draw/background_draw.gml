surface_set_target(Background.surface);
draw_clear(c_dkgray);
shader_set_uniform_i(shader_get_uniform(standard, "mode"), 2);
shader_set_uniform_f(shader_get_uniform(standard, "v_a"), color_get_red(CAD.primary_colors[CAD.mode]), color_get_green(CAD.primary_colors[CAD.mode]), color_get_blue(CAD.primary_colors[CAD.mode]));
shader_set_uniform_f(shader_get_uniform(standard, "v_b"), color_get_red(CAD.secondary_colors[CAD.mode]), color_get_green(CAD.secondary_colors[CAD.mode]), color_get_blue(CAD.secondary_colors[CAD.mode]));

var texture = -1;
shader_set_uniform_i(shader_get_uniform(standard, "texture_ID"), texture);

vertex_submit(Background.vertex_buffer,pr_trianglelist, texture);

shader_set_uniform_i(shader_get_uniform(standard, "texture_ID"), 0);

surface_reset_target();