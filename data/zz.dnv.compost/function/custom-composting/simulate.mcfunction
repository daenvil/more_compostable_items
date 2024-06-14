# @s and position = composter marker
# Checks for success and runs appropiate effects

execute store result score @s dnv.comp.success run function zz.dnv.compost:custom-composting/decide_success
execute if score @s dnv.comp.success matches 1 run function zz.dnv.compost:custom-composting/success
execute unless score @s dnv.comp.success matches 1 run function zz.dnv.compost:custom-composting/failure