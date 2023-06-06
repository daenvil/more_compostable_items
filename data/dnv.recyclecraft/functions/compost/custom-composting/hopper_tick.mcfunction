# Called by function dnv.recyclecraft:compost/hopper_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a compostable item and, if so, attempts to compost it

### Check for custom-compostable items:
execute store result score @s dnv.hopper_slot run function dnv.recyclecraft:compost/custom-composting/check_slots
data remove entity @s HandItems[0]

execute if score @s dnv.hopper_slot matches 0 run item modify block ~ ~1 ~ container.0 dnv.core:reduce_count
execute if score @s dnv.hopper_slot matches 1 run item modify block ~ ~1 ~ container.1 dnv.core:reduce_count
execute if score @s dnv.hopper_slot matches 2 run item modify block ~ ~1 ~ container.2 dnv.core:reduce_count
execute if score @s dnv.hopper_slot matches 3 run item modify block ~ ~1 ~ container.3 dnv.core:reduce_count
execute if score @s dnv.hopper_slot matches 4 run item modify block ~ ~1 ~ container.4 dnv.core:reduce_count

execute if score @s dnv.hopper_slot matches 0..4 run function dnv.recyclecraft:compost/custom-composting/simulate