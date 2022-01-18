# Called by function dnv.recyclecraft:compost/hopper_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a vanilla-compostable item

# For each hopper slot, copy item into armor stand main hand in order to check its tag
## Slot 0
execute if data block ~ ~1 ~ Items[{Slot:0b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:0b}]
execute if data block ~ ~1 ~ Items[{Slot:0b}] if predicate dnv.recyclecraft:mainhand_check_vanilla run scoreboard players set @s dnv.c_item_found -1
## Slot 1
execute if data block ~ ~1 ~ Items[{Slot:1b}] unless score @s dnv.c_item_found matches -1 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:1b}]
execute if data block ~ ~1 ~ Items[{Slot:1b}] unless score @s dnv.c_item_found matches -1 if predicate dnv.recyclecraft:mainhand_check_vanilla run scoreboard players set @s dnv.c_item_found -1
## Slot 2
execute if data block ~ ~1 ~ Items[{Slot:2b}] unless score @s dnv.c_item_found matches -1 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:2b}]
execute if data block ~ ~1 ~ Items[{Slot:2b}] unless score @s dnv.c_item_found matches -1 if predicate dnv.recyclecraft:mainhand_check_vanilla run scoreboard players set @s dnv.c_item_found -1
## Slot 3
execute if data block ~ ~1 ~ Items[{Slot:3b}] unless score @s dnv.c_item_found matches -1 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:3b}]
execute if data block ~ ~1 ~ Items[{Slot:3b}] unless score @s dnv.c_item_found matches -1 if predicate dnv.recyclecraft:mainhand_check_vanilla run scoreboard players set @s dnv.c_item_found -1
## Slot 4
execute if data block ~ ~1 ~ Items[{Slot:4b}] unless score @s dnv.c_item_found matches -1 run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:4b}]
execute if data block ~ ~1 ~ Items[{Slot:4b}] unless score @s dnv.c_item_found matches -1 if predicate dnv.recyclecraft:mainhand_check_vanilla run scoreboard players set @s dnv.c_item_found -1

data remove entity @s HandItems[0]