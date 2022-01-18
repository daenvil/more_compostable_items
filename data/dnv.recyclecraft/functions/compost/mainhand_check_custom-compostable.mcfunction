# Called by function dnv.recyclecraft:compost/hopper_custom_composting
# @s = composter marker
# position = composter marker position
# Checks the item in @s's main hand agains the lists of custom-compostable items, storing in dnv.c_item_found the composting chance it has.

scoreboard players set @s dnv.c_item_found 0
execute if predicate dnv.recyclecraft:mainhand_check_65pc run scoreboard players set @s dnv.c_item_found 65
execute if score @s dnv.c_item_found matches 0 if predicate dnv.recyclecraft:mainhand_check_30pc run scoreboard players set @s dnv.c_item_found 30
execute if score @s dnv.c_item_found matches 0 if predicate dnv.recyclecraft:mainhand_check_50pc run scoreboard players set @s dnv.c_item_found 50
execute if score @s dnv.c_item_found matches 0 if predicate dnv.recyclecraft:mainhand_check_10pc run scoreboard players set @s dnv.c_item_found 10
execute if score @s dnv.c_item_found matches 0 if predicate dnv.recyclecraft:mainhand_check_85pc run scoreboard players set @s dnv.c_item_found 85
execute if score @s dnv.c_item_found matches 0 if predicate dnv.recyclecraft:mainhand_check_100pc run scoreboard players set @s dnv.c_item_found 100
