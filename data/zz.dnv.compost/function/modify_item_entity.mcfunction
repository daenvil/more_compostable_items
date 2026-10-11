
execute unless items entity @s contents #dnv.compost:custom_compostable_items[!compostable] run return 0
execute if items entity @s contents #dnv.compost:custom_compostable_items_10pc[!compostable] run item modify entity @s contents {type:"set_components",components:{compostable:{layers:"dnv.compost:very_low"}}}
execute if items entity @s contents #dnv.compost:custom_compostable_items_30pc[!compostable] run item modify entity @s contents {type:"set_components",components:{compostable:{layers:"minecraft:compostable/low"}}}
execute if items entity @s contents #dnv.compost:custom_compostable_items_50pc[!compostable] run item modify entity @s contents {type:"set_components",components:{compostable:{layers:"minecraft:compostable/low_medium"}}}
execute if items entity @s contents #dnv.compost:custom_compostable_items_65pc[!compostable] run item modify entity @s contents {type:"set_components",components:{compostable:{layers:"minecraft:compostable/medium"}}}
execute if items entity @s contents #dnv.compost:custom_compostable_items_85pc[!compostable] run item modify entity @s contents {type:"set_components",components:{compostable:{layers:"minecraft:compostable/medium_high"}}}
execute if items entity @s contents #dnv.compost:custom_compostable_items_100pc[!compostable] run item modify entity @s contents {type:"set_components",components:{compostable:{layers:"minecraft:compostable/always_add_one"}}}
tag @s add dnv.compost.ignore