# Called by function dnv.recyclecraft:compost/custom-composting/hopper_tick
# @s = composter marker
# position = composter marker position
# For each hopper slot, copy item into armor stand main hand in order to check its tag
scoreboard players set @s dnv.hopper_slot -1

## Slot 0
execute if data block ~ ~1 ~ Items[{Slot:0b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:0b}]
execute if data block ~ ~1 ~ Items[{Slot:0b}] run execute store result score @s dnv.c_item_found run function dnv.recyclecraft:compost/custom-composting/mainhand_check
execute if score @s dnv.c_item_found matches 1.. run return 0

## Slot 1
execute if data block ~ ~1 ~ Items[{Slot:1b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:1b}]
execute if data block ~ ~1 ~ Items[{Slot:1b}] run execute store result score @s dnv.c_item_found run function dnv.recyclecraft:compost/custom-composting/mainhand_check
execute if score @s dnv.c_item_found matches 1.. run return 1

## Slot 2
execute if data block ~ ~1 ~ Items[{Slot:2b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:2b}]
execute if data block ~ ~1 ~ Items[{Slot:2b}] run execute store result score @s dnv.c_item_found run function dnv.recyclecraft:compost/custom-composting/mainhand_check
execute if score @s dnv.c_item_found matches 1.. run return 2

## Slot 3
execute if data block ~ ~1 ~ Items[{Slot:3b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:3b}]
execute if data block ~ ~1 ~ Items[{Slot:3b}] run execute store result score @s dnv.c_item_found run function dnv.recyclecraft:compost/custom-composting/mainhand_check
execute if score @s dnv.c_item_found matches 1.. run return 3

## Slot 4
execute if data block ~ ~1 ~ Items[{Slot:4b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:4b}]
execute if data block ~ ~1 ~ Items[{Slot:4b}] run execute store result score @s dnv.c_item_found run function dnv.recyclecraft:compost/custom-composting/mainhand_check
execute if score @s dnv.c_item_found matches 1.. run return 4