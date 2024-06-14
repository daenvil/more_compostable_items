# Called by function zz.dnv.compost:raycast/start or by itself
# @s = player who placed the composter
# position = eyes ^ ^ ^x
# Finds the position of the placed composter and calls zz.dnv.compost:summon_composter_marker on that position

execute if block ~ ~ ~ minecraft:composter align xyz positioned ~ ~ ~ run function zz.dnv.compost:summon_composter_marker

# If not found, repeat function in the next forward step towards where the player is facing:
execute if score @s dnv.comp.found matches ..0 if score @s dnv.comp.found >= @s dnv.raycast_range run scoreboard players remove @s dnv.comp.found 1
execute if score @s dnv.comp.found matches ..0 if score @s dnv.comp.found >= @s dnv.raycast_range positioned ^ ^ ^.1 run function zz.dnv.compost:raycast/find_line
