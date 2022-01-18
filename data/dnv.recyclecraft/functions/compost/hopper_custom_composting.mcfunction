# Called by function dnv.recyclecraft:compost/hopper_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a compostable item and, if so, attempts to compost it

### Check for custom-compostable items:
# For each hopper slot, copy item into armor stand main hand in order to check its tag
scoreboard players set @s dnv.hopper_slot -1
scoreboard players set @s dnv.comp_success 0

## Slot 0
execute if data block ~ ~1 ~ Items[{Slot:0b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:0b}]
execute if data block ~ ~1 ~ Items[{Slot:0b}] run function dnv.recyclecraft:compost/mainhand_check_custom-compostable
execute if score @s dnv.c_item_found matches 1.. run scoreboard players set @s dnv.hopper_slot 0

execute if score @s dnv.hopper_slot matches 0 store result score @s dnv.c_item_count run data get block ~ ~1 ~ Items[{Slot:0b}].Count
execute if score @s dnv.hopper_slot matches 0 run scoreboard players remove @s dnv.c_item_count 1
execute if score @s dnv.hopper_slot matches 0 store result block ~ ~1 ~ Items[{Slot:0b}].Count double 1 run scoreboard players get @s dnv.c_item_count

## Slot 1
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:1b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:1b}]
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:1b}] run function dnv.recyclecraft:compost/mainhand_check_custom-compostable
execute if score @s dnv.hopper_slot matches -1 if score @s dnv.c_item_found matches 1.. run scoreboard players set @s dnv.hopper_slot 1

execute if score @s dnv.hopper_slot matches 1 store result score @s dnv.c_item_count run data get block ~ ~1 ~ Items[{Slot:1b}].Count
execute if score @s dnv.hopper_slot matches 1 run scoreboard players remove @s dnv.c_item_count 1
execute if score @s dnv.hopper_slot matches 1 store result block ~ ~1 ~ Items[{Slot:1b}].Count double 1 run scoreboard players get @s dnv.c_item_count

## Slot 2
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:2b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:2b}]
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:2b}] run function dnv.recyclecraft:compost/mainhand_check_custom-compostable
execute if score @s dnv.hopper_slot matches -1 if score @s dnv.c_item_found matches 1.. run scoreboard players set @s dnv.hopper_slot 2

execute if score @s dnv.hopper_slot matches 2 store result score @s dnv.c_item_count run data get block ~ ~1 ~ Items[{Slot:2b}].Count
execute if score @s dnv.hopper_slot matches 2 run scoreboard players remove @s dnv.c_item_count 1
execute if score @s dnv.hopper_slot matches 2 store result block ~ ~1 ~ Items[{Slot:2b}].Count double 1 run scoreboard players get @s dnv.c_item_count

## Slot 3
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:3b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:3b}]
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:3b}] run function dnv.recyclecraft:compost/mainhand_check_custom-compostable
execute if score @s dnv.hopper_slot matches -1 if score @s dnv.c_item_found matches 1.. run scoreboard players set @s dnv.hopper_slot 3

execute if score @s dnv.hopper_slot matches 3 store result score @s dnv.c_item_count run data get block ~ ~1 ~ Items[{Slot:3b}].Count
execute if score @s dnv.hopper_slot matches 3 run scoreboard players remove @s dnv.c_item_count 1
execute if score @s dnv.hopper_slot matches 3 store result block ~ ~1 ~ Items[{Slot:3b}].Count double 1 run scoreboard players get @s dnv.c_item_count

## Slot 4
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:4b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:4b}]
execute if score @s dnv.hopper_slot matches -1 if data block ~ ~1 ~ Items[{Slot:4b}] run function dnv.recyclecraft:compost/mainhand_check_custom-compostable
execute if score @s dnv.hopper_slot matches -1 if score @s dnv.c_item_found matches 1.. run scoreboard players set @s dnv.hopper_slot 4

execute if score @s dnv.hopper_slot matches 4 store result score @s dnv.c_item_count run data get block ~ ~1 ~ Items[{Slot:4b}].Count
execute if score @s dnv.hopper_slot matches 4 run scoreboard players remove @s dnv.c_item_count 1
execute if score @s dnv.hopper_slot matches 4 store result block ~ ~1 ~ Items[{Slot:4b}].Count double 1 run scoreboard players get @s dnv.c_item_count

# Outcome based on corresponding random chance:
execute if score @s dnv.c_item_found matches 10 if predicate dnv.core:chance/10 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 30 if predicate dnv.core:chance/30 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 50 if predicate dnv.core:chance/50 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 65 if predicate dnv.core:chance/65 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 85 if predicate dnv.core:chance/85 run scoreboard players set @s dnv.comp_success 1
execute if score @s dnv.c_item_found matches 100 run scoreboard players set @s dnv.comp_success 1

execute if score @s dnv.comp_success matches 1 run function dnv.recyclecraft:compost/compost_success
execute unless score @s dnv.comp_success matches 1 if score @s dnv.c_item_found matches 1.. run function dnv.recyclecraft:compost/compost_failure

data remove entity @s HandItems[0]