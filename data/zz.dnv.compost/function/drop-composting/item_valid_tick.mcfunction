# Called by function zz.dnv.compost:drop-composting/item_tick if a composter marker is present
# @s and position = dropped item that is compostable and inside a composter
# Get item's composting chance, simulate composting on the nearest marker, and reduce its count

execute store result score @s dnv.comp.item_found run function zz.dnv.compost:drop-composting/get_chance
execute if score @s dnv.comp.item_found matches 0 run return 0
scoreboard players operation @e[type=armor_stand,distance=..1,tag=dnv.composter_marker,sort=nearest,limit=1] dnv.comp.item_found = @s dnv.comp.item_found
execute as @e[type=armor_stand,distance=..1,tag=dnv.composter_marker,sort=nearest,limit=1] at @s run function zz.dnv.compost:custom-composting/simulate
item modify entity @s contents {"function": "set_count","count": -1,"add": true}
