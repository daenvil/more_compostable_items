scoreboard players set @s dnv.compost.target_found 1
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=dnv.compost.marker,tag=!dnv.composterless,distance=..0.5] run return 0
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["dnv.compost.marker"],Invulnerable:1b,NoGravity:1b}