enabled = true;
x = mouse_x;
y = mouse_y;

//reset stack
ds_stack_clear(stack);
var strings = ["Code Graph","Modeling","Animation"];
ds_stack_push(stack, group_indices[? strings[CAD.mode]]);