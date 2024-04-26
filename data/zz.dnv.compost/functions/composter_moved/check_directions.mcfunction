# Called by function zz.dnv.compost:composter_moved/main
# @s and position = composterless marker

# Search adjacent blocks for a composter without a marker:
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.comp.deletion_timer matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.comp.deletion_timer matches 0 positioned ~ ~ ~1 if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.comp.deletion_timer matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.comp.deletion_timer matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.comp.deletion_timer matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp

# If not, destroy it:
execute unless score @s dnv.comp.deletion_timer matches 0 run kill @s