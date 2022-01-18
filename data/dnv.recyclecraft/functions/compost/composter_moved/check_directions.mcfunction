# Scheduled by function dnv.recyclecraft:compost/composter_moved/main
# @s = composterless marker

# Search adjacent blocks for a composter without a marker:
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.no_composter_marker,distance=..0.5] run function dnv.recyclecraft:compost/composter_moved/tp
execute if score @s dnv.no_composter matches 3.. positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.no_composter_marker,distance=..0.5] run function dnv.recyclecraft:compost/composter_moved/tp
execute if score @s dnv.no_composter matches 3.. positioned ~ ~ ~1 if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.no_composter_marker,distance=..0.5] run function dnv.recyclecraft:compost/composter_moved/tp
execute if score @s dnv.no_composter matches 3.. positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.no_composter_marker,distance=..0.5] run function dnv.recyclecraft:compost/composter_moved/tp
execute if score @s dnv.no_composter matches 3.. positioned ~ ~1 ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.no_composter_marker,distance=..0.5] run function dnv.recyclecraft:compost/composter_moved/tp
execute if score @s dnv.no_composter matches 3.. positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:composter unless entity @e[tag=dnv.composter_marker,tag=!dnv.no_composter_marker,distance=..0.5] run function dnv.recyclecraft:compost/composter_moved/tp

# If not, destroy it:
execute if score @s dnv.no_composter matches 3.. run kill @s