graph_nodes = ds_list_create();

cube_vertices = vertex_create_buffer();

vertex_begin(cube_vertices, global.vertex_format);

vertex_position_3d(cube_vertices, -1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,-1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,-1.0,1.0);
vertex_normal(cube_vertices, 0,-1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,-1,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, 1.0,-1.0,1.0);
vertex_normal(cube_vertices, 0,-1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,-1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,-1,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, 1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,-1.0,1.0);
vertex_normal(cube_vertices, 1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,1.0,1.0);
vertex_normal(cube_vertices, 1,0,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, 1.0,1.0,1.0);
vertex_normal(cube_vertices, 1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,1.0,-1.0);
vertex_normal(cube_vertices, 1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 1,0,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, 1.0,1.0,1.0);
vertex_normal(cube_vertices, 0,0,1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,-1.0,1.0);
vertex_normal(cube_vertices, 0,0,1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,-1.0,1.0);
vertex_normal(cube_vertices, 0,0,1);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, -1.0,-1.0,1.0);
vertex_normal(cube_vertices, 0,0,1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,1.0,1.0);
vertex_normal(cube_vertices, 0,0,1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,1.0,1.0);
vertex_normal(cube_vertices, 0,0,1);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, -1.0,1.0,-1.0);
vertex_normal(cube_vertices, 0,0,-1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,0,-1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,0,-1);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, 1.0,-1.0,-1.0);
vertex_normal(cube_vertices, 0,0,-1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,1.0,-1.0);
vertex_normal(cube_vertices, 0,0,-1);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,1.0,-1.0);
vertex_normal(cube_vertices, 0,0,-1);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, -1.0,1.0,-1.0);
vertex_normal(cube_vertices, -1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,1.0,1.0);
vertex_normal(cube_vertices, -1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,-1.0,1.0);
vertex_normal(cube_vertices, -1,0,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, -1.0,-1.0,1.0);
vertex_normal(cube_vertices, -1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,-1.0,-1.0);
vertex_normal(cube_vertices, -1,0,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,1.0,-1.0);
vertex_normal(cube_vertices, -1,0,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, 1.0,1.0,-1.0);
vertex_normal(cube_vertices, 0,1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,1.0,1.0);
vertex_normal(cube_vertices, 0,1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,1.0,1.0);
vertex_normal(cube_vertices, 0,1,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_position_3d(cube_vertices, -1.0,1.0,1.0);
vertex_normal(cube_vertices, 0,1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, -1.0,1.0,-1.0);
vertex_normal(cube_vertices, 0,1,0);
vertex_texcoord(cube_vertices, 0,0);
vertex_position_3d(cube_vertices, 1.0,1.0,-1.0);
vertex_normal(cube_vertices, 0,1,0);
vertex_texcoord(cube_vertices, 0,0);

vertex_end(cube_vertices);