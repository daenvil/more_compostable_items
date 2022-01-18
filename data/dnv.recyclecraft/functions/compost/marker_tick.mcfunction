# Called by function dnv.recyclecraft:compost/tick
# @s = composter marker
# position = marker position

# Check composter markers that don't have a composter on the same block.
execute if score @s dnv.no_composter matches 1.. run scoreboard players add @s dnv.no_composter 1
execute unless score @s dnv.no_composter matches 1.. unless block ~ ~ ~ minecraft:composter run function dnv.recyclecraft:compost/marker_update

# If there is a hopper on top which is enabled and facing down, and if composter is active, call function dnv.recyclecraft:compost/hopper_tick on it
execute unless score @s dnv.no_composter matches 1.. if block ~ ~1 ~ minecraft:hopper[enabled=true,facing=down] unless block ~ ~ ~ minecraft:composter[level=7] unless block ~ ~ ~ minecraft:composter[level=8] run function dnv.recyclecraft:compost/hopper_tick