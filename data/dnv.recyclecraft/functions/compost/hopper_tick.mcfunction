# Called by function dnv.recyclecraft:compost/marker_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a vanilla-compostable item and, if not, runs function dnv.recyclecraft:compost/hopper_custom_composting

# Search hopper inventory for a compostable stack:
scoreboard players set @s dnv.c_item_found 0

# Get hopper cooldown:
execute store result score @s dnv.hopper_cd run data get block ~ ~1 ~ TransferCooldown

## First search for vanilla-compostable items(*):
execute unless score @s dnv.hopper_cd matches 2..7 run function dnv.recyclecraft:compost/hopper_vanilla_composting_check

# If no vanilla-compostable items are present and if composter is ready and if hopper is not on cooldown, run custom composting function:
execute unless score @s dnv.hopper_cd matches 1..7 unless score @s dnv.c_item_found matches -1 unless entity @s[tag=dnv.vanilla-composting] run function dnv.recyclecraft:compost/hopper_custom_composting

# If an item was custom-composted, set TransferCooldown to 8 (max value)
execute if score @s dnv.c_item_found matches 1.. run data modify block ~ ~1 ~ TransferCooldown set value 8

# Last vanilla-compostable item could have been composted before in this same tick, so (*) has to be executed also in the previous tick (cd=1) and this tag takes it into account:
execute if score @s dnv.c_item_found matches -1 run tag @s add dnv.vanilla-composting
execute unless score @s dnv.c_item_found matches -1 run tag @s remove dnv.vanilla-composting