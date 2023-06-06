# Called by function dnv.recyclecraft:compost/tick
# Finds items which are dropped inside an active composter and calls function dnv.recyclecraft:compost/drop-composting/item_tick on them

execute if score dnv.dummy dnv.comp.drop_on matches 1 as @e[type=item,tag=!dnv.compost.ignore] at @s if block ~ ~ ~ minecraft:composter unless block ~ ~ ~ minecraft:composter[level=7] unless block ~ ~ ~ minecraft:composter[level=8] run function dnv.recyclecraft:compost/drop-composting/item_tick
