graph_nodes = ds_list_create();

cube = vertex_create_buffer();

vertex_begin(cube, global.vertex_format);

vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,-1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,-1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_position_3d(cube, -1.0,1.0,1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, -1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);
vertex_position_3d(cube, 1.0,1.0,-1.0);
vertex_color(cube, 0, 1.0);
vertex_texcoord(cube, 0,0);

vertex_end(cube);