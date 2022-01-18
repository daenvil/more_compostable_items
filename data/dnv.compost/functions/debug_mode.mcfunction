# Called by user

execute unless score @s dnv.comp.debug matches 1 run scoreboard players set @s dnv.comp.debug 2
execute if score @s dnv.comp.debug matches 1 run scoreboard players set @s dnv.comp.debug 0
execute if score @s dnv.comp.debug matches 2 run scoreboard players set @s dnv.comp.debug 1

# Change visibility of markers
execute if score @s dnv.comp.debug matches 1 as @e[tag=dnv.composter_marker] run data modify entity @s Invisible set value 0
execute if score @s dnv.comp.debug matches 0 as @e[tag=dnv.composter_marker] run data modify entity @s Invisible set value 1

execute if score @s dnv.comp.debug matches 1 run tellraw @s {"text":"[Daenvil's More Compostable Items]: debug mode enabled.","color":"green"}
execute if score @s dnv.comp.debug matches 0 run tellraw @s {"text":"[Daenvil's More Compostable Items]: debug mode disabled.","color":"gray"}
