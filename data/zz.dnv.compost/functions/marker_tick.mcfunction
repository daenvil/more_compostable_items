# Called by function zz.dnv.compost:tick
# @s and position = composter marker

# Check composter markers that don't have a composter on the same block.
execute if score @s dnv.comp.deletion_timer matches 1.. run scoreboard players add @s dnv.comp.deletion_timer 1
execute unless score @s dnv.comp.deletion_timer matches 1.. unless block ~ ~ ~ minecraft:composter run function zz.dnv.compost:marker_update

# If there is a hopper on top which is enabled and facing down, and if composter is active, call function zz.dnv.compost:hopper_tick on it
execute unless score @s dnv.comp.deletion_timer matches 1.. if block ~ ~1 ~ minecraft:hopper[enabled=true,facing=down] unless block ~ ~ ~ minecraft:composter[level=7] unless block ~ ~ ~ minecraft:composter[level=8] run function zz.dnv.compost:hopper_tick