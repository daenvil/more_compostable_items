# Called by function zz.dnv.compost:drop-composting/update
# @s and position = item entity inside composter

execute unless items entity @s contents #dnv.compost:all_compostable_items run tag @s add dnv.compost.ignore
execute unless entity @s[tag=dnv.compost.ignore] unless block ~ ~ ~ minecraft:composter[level=7] unless block ~ ~ ~ minecraft:composter[level=8] run function zz.dnv.compost:drop-composting/item_tick
