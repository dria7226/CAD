var torus = vertex_create_buffer();

vertex_begin(torus, global.vertex_format);

vertex_position_3d(torus, -0.5,-0.5,0.5);
vertex_color(torus, 0, 1.0);
vertex_texcoord(torus, 0,0);
vertex_position_3d(torus, -0.5,-0.5,-0.5);
vertex_color(torus, 0, 1.0);
vertex_texcoord(torus, 0,0);
vertex_position_3d(torus, -0.5,0.5,-0.5);
vertex_color(torus, 0, 1.0);
vertex_texcoord(torus, 0,0);

vertex_end(torus);

ds_list_add(Modeling.triangle_groups,torus);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);