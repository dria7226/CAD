CAD.w_width = window_get_width();
CAD.w_height = window_get_height();
CAD.w_width -= CAD.w_width % 2;
CAD.w_height -= CAD.w_height % 2;

window_set_size(CAD.w_width, CAD.w_height);

construct_background_vertices();