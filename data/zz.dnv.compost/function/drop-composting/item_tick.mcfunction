# Called by function zz.dnv.compost:drop-composting/find_items_in_composters
# @s and position = dropped item that is compostable and inside a composter

scoreboard players set @s dnv.comp.has_marker 0

execute if entity @e[type=armor_stand,tag=dnv.composter_marker,distance=..1,sort=nearest,limit=1] run scoreboard players set @s dnv.comp.has_marker 1
execute if score @s dnv.comp.has_marker matches 1 run function zz.dnv.compost:drop-composting/item_valid_tick

execute unless score @s dnv.comp.has_marker matches 1 align xyz positioned ~ ~ ~ on origin run function zz.dnv.compost:summon_composter_marker