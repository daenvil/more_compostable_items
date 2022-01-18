# Called by function dnv.recyclecraft:compost/marker_tick if marker is not inside a composter
# @s = composter marker
# position = marker position

# Tag marker so it stops working as composter:
tag @s add dnv.no_composter_marker
scoreboard players set @s dnv.no_composter 1

# 3 ticks from now (when pistons finish extending), check adjacent blocks, in case composter was moved by a piston:
schedule function dnv.recyclecraft:compost/composter_moved/main 3 append