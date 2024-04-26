# Called by function zz.dnv.compost:composter_moved/main
# @s = composter marker without a composter on its block

tp @s ~ ~ ~
scoreboard players set @s dnv.comp.deletion_timer 0
tag @s remove dnv.comp.composterless