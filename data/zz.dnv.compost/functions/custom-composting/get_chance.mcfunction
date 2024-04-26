# Called by function zz.dnv.compost:custom-composting/get_slot
# @s = composter marker

execute if items entity @s weapon.mainhand #dnv.compost:compostable_items_65pc run return 65
execute if items entity @s weapon.mainhand #dnv.compost:compostable_items_30pc run return 30
execute if items entity @s weapon.mainhand #dnv.compost:compostable_items_50pc run return 50
execute if items entity @s weapon.mainhand #dnv.compost:compostable_items_10pc run return 10
execute if items entity @s weapon.mainhand #dnv.compost:compostable_items_85pc run return 85
execute if items entity @s weapon.mainhand #dnv.compost:compostable_items_100pc run return 100
return 0