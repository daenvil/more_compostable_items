# Called by function dnv.recyclecraft:compost/drop-composting/item_tick if a composter marker is present
# @s = dropped item
# position = item position
# Copies item in marker's main hand and calls function dnv.recyclecraft:compost/drop-composting/custom-composting
# If item is compostable, calls function dnv.recyclecraft:compost/drop-composting/reduce_count

data modify entity @e[type=armor_stand,distance=..1,tag=dnv.composter_marker,sort=nearest,limit=1] HandItems[0] set from entity @s Item
execute as @e[type=armor_stand,distance=..1,tag=dnv.composter_marker,sort=nearest,limit=1] run function dnv.recyclecraft:compost/drop-composting/check_and_compost
execute if score @e[type=armor_stand,distance=..1,tag=dnv.composter_marker,sort=nearest,limit=1] dnv.c_item_found matches 1.. run function dnv.recyclecraft:compost/drop-composting/reduce_count
