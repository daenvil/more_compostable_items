# Called by function dnv.recyclecraft:compost/dropped_item_tick
# @s = dropped item
# position = item position
# Reduces item count by 1

execute store result score @s dnv.c_item_count run data get entity @s Item.Count
scoreboard players remove @s dnv.c_item_count 1
execute store result entity @s Item.Count double 1 run scoreboard players get @s dnv.c_item_count
