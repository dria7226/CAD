CAD.modeling_submode = 0;

var group = Selection_Wheel.groups[group_indices[? "Modeling"]];
group[array_length_1d(group)-1] = Selection_Wheel.DRAW_SUBMODE;
groups[group_indices[? "Modeling"]] = group;

ds_stack_clear(Selection_Wheel.stack);
Selection_Wheel.enabled = !ds_stack_empty(Selection_Wheel.stack);