# Called by function dnv.recyclecraft:compost/drop-composting/item_valid_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a compostable item and, if so, attempts to compost it

execute store result score @s dnv.c_item_found run function dnv.recyclecraft:compost/custom-composting/mainhand_check
data remove entity @s HandItems[0]

execute if score @s dnv.c_item_found matches 1.. run function dnv.recyclecraft:compost/custom-composting/simulate