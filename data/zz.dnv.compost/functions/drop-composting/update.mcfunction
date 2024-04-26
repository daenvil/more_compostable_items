execute as @e[type=item,tag=!dnv.compost.ignore] at @s if block ~ ~ ~ minecraft:composter run function zz.dnv.compost:drop-composting/find_items_in_composters
schedule function zz.dnv.compost:drop-composting/update 3t replace
