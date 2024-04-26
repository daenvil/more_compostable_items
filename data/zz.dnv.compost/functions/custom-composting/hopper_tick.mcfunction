# Called by function zz.dnv.compost:hopper_tick
# @s and position = composter marker
# Checks if hopper on top of composter contains a compostable item and, if so, attempts to compost it

# Check for custom-compostable items:
execute store result score @s dnv.comp.hopper_slot run function zz.dnv.compost:custom-composting/get_slot
execute if score @s dnv.comp.hopper_slot matches -1 run return 0

# Copy item from appropiate slot and reduce its count:
execute if score @s dnv.comp.hopper_slot matches 0 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:0b}]
execute if score @s dnv.comp.hopper_slot matches 0 run item modify block ~ ~1 ~ container.0 {"function": "set_count","count": -1,"add": true}
execute if score @s dnv.comp.hopper_slot matches 1 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:1b}]
execute if score @s dnv.comp.hopper_slot matches 1 run item modify block ~ ~1 ~ container.1 {"function": "set_count","count": -1,"add": true}
execute if score @s dnv.comp.hopper_slot matches 2 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:2b}]
execute if score @s dnv.comp.hopper_slot matches 2 run item modify block ~ ~1 ~ container.2 {"function": "set_count","count": -1,"add": true}
execute if score @s dnv.comp.hopper_slot matches 3 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:3b}]
execute if score @s dnv.comp.hopper_slot matches 3 run item modify block ~ ~1 ~ container.3 {"function": "set_count","count": -1,"add": true}
execute if score @s dnv.comp.hopper_slot matches 4 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:4b}]
execute if score @s dnv.comp.hopper_slot matches 4 run item modify block ~ ~1 ~ container.4 {"function": "set_count","count": -1,"add": true}

# Get composting chance:
execute store result score @s dnv.comp.item_found run function zz.dnv.compost:custom-composting/get_chance
data remove entity @s HandItems[0]

# Simulate composting:
function zz.dnv.compost:custom-composting/simulate