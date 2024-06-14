# Called by function zz.dnv.compost:raycast/start or by itself
# @s = player who placed the composter
# position = eyes ^ ^ ^x
# Finds the position of the placed composter and calls zz.dnv.compost:summon_composter_marker on that position. This one searches in the blocks around the first search.

execute positioned ^1 ^ ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^ ^1 ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker
execute unless score @s dnv.comp.found matches 1 if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:composter align xyz run function zz.dnv.compost:summon_composter_marker

execute if score @s dnv.comp.found matches 1 run return 1
# If not found, repeat function in the next forward step towards where the player is facing:
execute if score @s dnv.comp.found >= @s dnv.raycast_range_doubled run scoreboard players remove @s dnv.comp.found 1
execute if score @s dnv.comp.found >= @s dnv.raycast_range_doubled positioned ^ ^ ^.1 run function zz.dnv.compost:raycast/find_wide
