# Called by function dnv.recyclecraft:compost/composter_moved/main
# @s = composter marker without a composter on its block

tp @s ~ ~ ~
scoreboard players set @s dnv.no_composter 0
tag @s remove dnv.no_composter_marker