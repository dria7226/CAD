ds_list_add(Code.comment_nodes, [Code.latest_variable_x, Code.latest_variable_y, Code.latest_variable_z, 0]);

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);