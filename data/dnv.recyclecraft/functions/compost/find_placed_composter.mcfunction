# Called by function dnv.recyclecraft:compost/placed_composter or by itself
# @s = player who placed the composter
# position = eyes ^ ^ ^
# Finds the position of the placed composter and calls dnv.recyclecraft:compost/summon_composter_marker on that position

execute if block ~ ~ ~ minecraft:composter align xyz positioned ~ ~ ~ run function dnv.recyclecraft:compost/summon_composter_marker

# If not found, repeat function in the next forward step towards where the player is facing:
execute if score @s dnv.comp_found matches -60..0 run scoreboard players remove @s dnv.comp_found 1
execute if score @s dnv.comp_found matches -60..0 positioned ^ ^ ^.1 run function dnv.recyclecraft:compost/find_placed_composter

# Objective dnv.comp_found functions as both a tracker of how many steps were done (in negative numbers) and as confirmation of success (1)
