surface_set_target(CAD.surfaces[2]);

shader_set_uniform_i(shader_get_uniform(standard, "mode"), 4);

surface_reset_target();