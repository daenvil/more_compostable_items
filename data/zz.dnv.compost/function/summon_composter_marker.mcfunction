# Called by functions zz.dnv.compost:raycast/find_*
# @s = player who placed the composter
# position = block where composter is
# Summons an invisible armor stand which acts as a marker for the composter position

execute if entity @e[tag=dnv.composter_marker,tag=!dnv.comp.composterless,distance=..0.5] run return 0
execute unless score @s dnv.comp.debug matches 1 run summon armor_stand ~0.5 ~ ~0.5 {Tags:["dnv.composter_marker","smithed.entity","smithed.strict","smithed.block"],Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:1b,Small:1b}
execute if score @s dnv.comp.debug matches 1 run summon armor_stand ~0.5 ~ ~0.5 {Tags:["dnv.composter_marker","smithed.entity","smithed.strict","smithed.block"],Invulnerable:1b,NoGravity:1b,Marker:1b,Invisible:0b,Small:1b}

scoreboard players set @s dnv.comp.found 1
execute if score @s dnv.comp.debug matches 1 run tellraw @a "[dnv.compost:debug_mode] Composter marker summoned!"
