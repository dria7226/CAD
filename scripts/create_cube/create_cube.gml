var cube = vertex_create_buffer();
vertex_begin(cube, global.vertex_format);

vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_normal(cube, 0,-1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_normal(cube, 0,-1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_normal(cube, 0,-1,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,-1.0,1.0);
vertex_normal(cube, 0,-1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_normal(cube, 0,-1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_normal(cube, 0,-1,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_normal(cube, 1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,1.0);
vertex_normal(cube, 1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_normal(cube, 1,0,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_normal(cube, 1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_normal(cube, 1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_normal(cube, 1,0,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_normal(cube, 0,0,1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,1.0);
vertex_normal(cube, 0,0,1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_normal(cube, 0,0,1);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_normal(cube, 0,0,1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_normal(cube, 0,0,1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_normal(cube, 0,0,1);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_normal(cube, 0,0,-1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_normal(cube, 0,0,-1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_normal(cube, 0,0,-1);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_normal(cube, 0,0,-1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_normal(cube, 0,0,-1);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_normal(cube, 0,0,-1);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_normal(cube, -1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_normal(cube, -1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_normal(cube, -1,0,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_normal(cube, -1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_normal(cube, -1,0,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_normal(cube, -1,0,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_normal(cube, 0,1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_normal(cube, 0,1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_normal(cube, 0,1,0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_normal(cube, 0,1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_normal(cube, 0,1,0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_normal(cube, 0,1,0);
vertex_texcoord(cube, 0,0);

vertex_end(cube);

ds_list_add(Modeling.triangle_groups,cube);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);