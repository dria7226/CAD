//code graph
groups[group_index] = [VOLUMES, SHAPES, TRANSFORMATIONS, MATH_OPERATIONS, LOGIC_OPERATIONS, BOOLEAN_OPERATIONS, GROUP, COMMENT];
ds_map_add(group_indices, "Code Graph", group_index++);

//modeling
groups[group_index] = [VOLUMES, SHAPES, TRANSFORMATIONS, BOOLEAN_OPERATIONS, DRAW_SUBMODE];
ds_map_add(group_indices, "Modeling", group_index++);

//animation
groups[group_index] = [];
ds_map_add(group_indices, "Animation", group_index++);