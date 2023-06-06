# Simulates composter behaviour
# Check for success:
execute store result score @s dnv.comp_success run function dnv.recyclecraft:compost/custom-composting/decide_success
# Run appropiate effects:
execute if score @s dnv.comp_success matches 1 run function dnv.recyclecraft:compost/custom-composting/success
execute unless score @s dnv.comp_success matches 1 if score @s dnv.c_item_found matches 1.. run function dnv.recyclecraft:compost/custom-composting/failure