var Z = Code.latest_variable_z + 1;
ds_list_add(Code.graph_nodes, [Code.latest_variable_x, Code.latest_variable_y, Z, 0]);
Code.latest_variable_z = Z;

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);