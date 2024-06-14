# @s and position = composter marker
# Delete if there's more markers in the same block

scoreboard players set @s dnv.comp.has_marker 0
execute as @e[type=armor_stand,tag=dnv.composter_marker,distance=..0.5] run scoreboard players add @s dnv.comp.has_marker 1
execute if score @s dnv.comp.has_marker matches 2.. run kill @s