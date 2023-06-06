# Called by function dnv.recyclecraft:compost/drop-composting/find_items_in_composters
# @s = dropped item
# position = item position
# If a composter marker is present in this composter, runs function dnv.recyclecraft:compost/drop-composting/item_valid_tick, 
# and if item is compostable, runs function dnv.recyclecraft:compost/drop-composting/reduce_count
# If neither of those, runs function dnv.recyclecraft:compost/drop-composting/ignore

scoreboard players set @s dnv.cm_present 0

execute if entity @e[type=armor_stand,tag=dnv.composter_marker,distance=..1,sort=nearest,limit=1] run scoreboard players set @s dnv.cm_present 1
execute if score @s dnv.cm_present matches 1 run function dnv.recyclecraft:compost/drop-composting/item_valid_tick
# If item is not compostable, tag it so it is ignored in future ticks:

execute if entity @s[nbt={"OnGround":1b}] run function dnv.recyclecraft:compost/drop-composting/ignore