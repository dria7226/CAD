var item_group = groups[ds_stack_top(stack)];
for(var item = 0; item < array_length_1d(item_group); item++)
{
	items[item_group[item], SW_OFFSET] = 0;
}