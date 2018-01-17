#macro SW_TEXT 0
#macro SW_ACTION 1
#macro SW_X 2
#macro SW_Y 3
#macro SW_CLOSENESS 4
#macro SW_DISTANCE 5
#macro SW_OFFSET 6
#macro SW_SIZE 7
#macro SW_ANGLE 8

#macro SW_NO_OF_ITEM_COMPONENTS 9

gpi = 0;

enabled = false;

normal_size = 20;
circle_thickness = 0.1;

normal_distance = normal_size*3;

//create groups
group_index = 0;
group_indices = ds_map_create();

//clear memory
for(var i = 0; i < sprite_get_number(icons); i++)
for(var j = 0; j < SW_NO_OF_ITEM_COMPONENTS; j++) items[i,j] = 0;

//create items
create_items();

//create groups
create_mode_switch();
create_main_groups();
create_volumes_group();
create_shapes_group();
create_operations_group();

//create stack
stack = ds_stack_create();