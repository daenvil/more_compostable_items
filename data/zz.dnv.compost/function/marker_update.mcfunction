# Called by function zz.dnv.compost:marker_tick if marker is not inside a composter
# @s and position = composter marker

# Tag marker so it stops working as composter:
tag @s add dnv.comp.composterless
scoreboard players set @s dnv.comp.deletion_timer 1

# 3 ticks from now (when pistons finish extending), check adjacent blocks, in case composter was moved by a piston:
schedule function zz.dnv.compost:composter_moved/main 3 append