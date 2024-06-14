# Called by function zz.dnv.compost:custom-composting/hopper_tick
# @s and position = composter marker

execute if items block ~ ~1 ~ container.0 #dnv.compost:all_compostable_items run return 0
execute if items block ~ ~1 ~ container.1 #dnv.compost:all_compostable_items run return 1
execute if items block ~ ~1 ~ container.2 #dnv.compost:all_compostable_items run return 2
execute if items block ~ ~1 ~ container.3 #dnv.compost:all_compostable_items run return 3
execute if items block ~ ~1 ~ container.4 #dnv.compost:all_compostable_items run return 4
return -1