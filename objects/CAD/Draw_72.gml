//check resize
if (w_width != window_get_width() || w_height != window_get_height())
	resize_routine();

//check surfaces
if(!surface_exists(Background.surface))
{
	Background.surface = surface_create(w_width,w_height);
	//resize application surface
	surface_resize(application_surface, w_width, w_height);
}
if(ds_map_exists(timers, "mode_switch"))
{
	for(var i = 0; i < array_length_1d(surfaces); i++)
	{
		if(!surface_exists(surfaces[i]))
		surfaces[i] = surface_create(w_width, w_height);
	}
}
else
{
	if(!surface_exists(surfaces[mode]))
	surfaces[mode] = surface_create(w_width, w_height);
}