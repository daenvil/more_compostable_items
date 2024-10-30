# Called by zz.dnv.compost:on_placed_composter
# @s and position = player who placed a composter
# Objective dnv.comp.found functions as both a tracker of how many steps were done (in negative numbers) and as confirmation of success (1)

# dnv.raycast_range contains the current interaction range multiplied by 10 (to do steps of 0.1 blocks) and in negative value:
execute store result score @s dnv.raycast_range run attribute @s player.block_interaction_range get -10
# dnv.raycast_range_doubled acts as a second counter in case the first method files:
scoreboard players operation @s dnv.raycast_range_doubled = @s dnv.raycast_range
scoreboard players operation @s dnv.raycast_range_doubled *= #dnv dnv.TWO

scoreboard players set @s dnv.comp.found 0
execute anchored eyes positioned ^ ^ ^ run function zz.dnv.compost:raycast/find_line
execute if score @s dnv.comp.debug matches 1 if score @s dnv.comp.found < @s dnv.raycast_range run tellraw @s "[dnv.compost:debug_mode] Placed composter could not be found, trying a wider search..."
execute if score @s dnv.comp.found < @s dnv.raycast_range anchored eyes positioned ^ ^ ^1 anchored feet run function zz.dnv.compost:raycast/find_wide
execute if score @s dnv.comp.debug matches 1 if score @s dnv.found_cake < @s dnv.raycast_range_doubled run tellraw @s "[dnv.compost:debug_mode] Placed composter was not found. Try placing it again while not moving and pointing to the center of a block."