# Called by function dnv.recyclecraft:compost/dropped_item_tick if a composter marker is present
# @s = dropped item
# position = item position
# Copies item in marker's main hand and calls function dnv.recyclecraft:compost/dropped_item_custom_composting
# If item is compostable, calls function dnv.recyclecraft:compost/dropped_item_reduce_count

data modify entity @e[tag=dnv.composter_marker,sort=nearest,limit=1,distance=..1] HandItems[0] set from entity @s Item
execute as @e[tag=dnv.composter_marker,sort=nearest,limit=1,distance=..1] run function dnv.recyclecraft:compost/dropped_item_custom_composting
execute if score @e[tag=dnv.composter_marker,sort=nearest,limit=1,distance=..1] dnv.c_item_found matches 1.. run function dnv.recyclecraft:compost/dropped_item_reduce_count
