
scoreboard players set @s dnv.compost.found 0
execute positioned ~1 ~ ~ if block ~ ~ ~ composter unless entity @e[type=marker,tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.compost.found matches 1 positioned ~-1 ~ ~ if block ~ ~ ~ composter unless entity @e[type=marker,tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.compost.found matches 1 positioned ~ ~ ~1 if block ~ ~ ~ composter unless entity @e[type=marker,tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.compost.found matches 1 positioned ~ ~ ~-1 if block ~ ~ ~ composter unless entity @e[type=marker,tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.compost.found matches 1 positioned ~ ~1 ~ if block ~ ~ ~ composter unless entity @e[type=marker,tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.compost.found matches 1 positioned ~ ~-1 ~ if block ~ ~ ~ composter unless entity @e[type=marker,tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run function zz.dnv.compost:composter_moved/tp
execute unless score @s dnv.compost.found matches 1 run kill @s