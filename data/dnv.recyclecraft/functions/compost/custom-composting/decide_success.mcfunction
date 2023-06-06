# Runs the appropiate random chance based on dnv.c_item_found. Returns 0 or 1 (fail/success)
execute if score @s dnv.c_item_found matches 10 if predicate dnv.core:chance/10 run return 1
execute if score @s dnv.c_item_found matches 30 if predicate dnv.core:chance/30 run return 1
execute if score @s dnv.c_item_found matches 50 if predicate dnv.core:chance/50 run return 1
execute if score @s dnv.c_item_found matches 65 if predicate dnv.core:chance/65 run return 1
execute if score @s dnv.c_item_found matches 85 if predicate dnv.core:chance/85 run return 1
execute if score @s dnv.c_item_found matches 100 run return 1
return 0