# Called by user

execute unless score #dnv dnv.comp.drop_on matches 1 run scoreboard players set #dnv dnv.comp.drop_on 2
execute if score #dnv dnv.comp.drop_on matches 1 run scoreboard players set #dnv dnv.comp.drop_on 0
execute if score #dnv dnv.comp.drop_on matches 2 run scoreboard players set #dnv dnv.comp.drop_on 1

execute if score #dnv dnv.comp.drop_on matches 1 run tellraw @s {"text":"[Daenvil's More Compostable Items]: compost-by-dropping enabled.","color":"green"}
execute if score #dnv dnv.comp.drop_on matches 0 run tellraw @s {"text":"[Daenvil's More Compostable Items]: compost-by-dropping disabled.","color":"red"}

execute if score #dnv dnv.comp.drop_on matches 1 run schedule function zz.dnv.compost:drop-composting/update 3t replace
execute if score #dnv dnv.comp.drop_on matches 0 run schedule clear zz.dnv.compost:drop-composting/update