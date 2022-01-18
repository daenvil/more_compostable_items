# Called by function dnv.recyclecraft:compost/dropped_item_tick if item is OnGround
# @s = dropped item
# position = item position
# tags item as to be ignored if composter marker is not present or if it is not compostable

execute unless score @s dnv.cm_present matches 1 run tag @s add dnv.compost.ignore
execute if score @s dnv.cm_present matches 1 unless score @e[tag=dnv.composter_marker,sort=nearest,limit=1,distance=..1] dnv.c_item_found matches 1.. run tag @s add dnv.compost.ignore

execute if score dnv.dummy dnv.comp.debug matches 1 unless score @s dnv.cm_present matches 1 run tellraw @a "[dnv.compost:debug_mode] This composter is not registered by the datapack. Break it and replace it!"