groups[group_index] = [TRANSFORMATIONS, MATH_OPERATIONS, LOGIC_OPERATIONS, BOOLEAN_OPERATIONS];
ds_map_add(group_indices, "Operations", group_index++);

create_transformations_group();
create_math_group();
create_logic_group();
create_boolean_group();