# Called by function dnv.recyclecraft:compost/custom-composting/check_slots
# @s = composter marker
# position = composter marker position
# Checks the item in @s's main hand against the lists of custom-compostable items, returns its composting chance.

execute if predicate dnv.recyclecraft:mainhand_check_65pc run return 65
execute if predicate dnv.recyclecraft:mainhand_check_30pc run return 30
execute if predicate dnv.recyclecraft:mainhand_check_50pc run return 50
execute if predicate dnv.recyclecraft:mainhand_check_10pc run return 10
execute if predicate dnv.recyclecraft:mainhand_check_85pc run return 85
execute if predicate dnv.recyclecraft:mainhand_check_100pc run return 100
return 0