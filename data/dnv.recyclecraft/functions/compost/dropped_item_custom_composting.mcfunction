# Called by function dnv.recyclecraft:compost/dropped_item_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a compostable item and, if so, attempts to compost it

### Check if item is compostable:
# Armor stand already has item on main hand, just check it
scoreboard players set @s dnv.comp_success 0

function dnv.recyclecraft:compost/mainhand_check_custom-compostable

# Outcome based on corresponding random chance:
execute if score @s dnv.c_item_found matches 10 if predicate dnv.core:chance/10 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 30 if predicate dnv.core:chance/30 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 50 if predicate dnv.core:chance/50 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 65 if predicate dnv.core:chance/65 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 85 if predicate dnv.core:chance/85 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 100 run scoreboard players set @s dnv.comp_success 1

execute if score @s dnv.comp_success matches 1 run function dnv.recyclecraft:compost/compost_success
execute if score @s dnv.c_item_found matches 1.. unless score @s dnv.comp_success matches 1 run function dnv.recyclecraft:compost/compost_failure

data remove entity @s HandItems[0]
