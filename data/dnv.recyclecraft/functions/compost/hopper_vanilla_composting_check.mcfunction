# Called by function dnv.recyclecraft:compost/hopper_tick
# @s = composter marker
# position = composter marker position
# Checks if hopper on top of composter contains a vanilla-compostable item

# For each hopper slot, copy item into armor stand main hand in order to check its tag
## Slot 0
execute if data block ~ ~1 ~ Items[{Slot:0b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:0b}]
execute if data block ~ ~1 ~ Items[{Slot:0b}] if predicate dnv.recyclecraft:mainhand_check_vanilla run return -1
## Slot 1
execute if data block ~ ~1 ~ Items[{Slot:1b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:1b}]
execute if data block ~ ~1 ~ Items[{Slot:1b}] if predicate dnv.recyclecraft:mainhand_check_vanilla run return -1
## Slot 2
execute if data block ~ ~1 ~ Items[{Slot:2b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:2b}]
execute if data block ~ ~1 ~ Items[{Slot:2b}] if predicate dnv.recyclecraft:mainhand_check_vanilla run return -1
## Slot 3
execute if data block ~ ~1 ~ Items[{Slot:3b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:3b}]
execute if data block ~ ~1 ~ Items[{Slot:3b}] if predicate dnv.recyclecraft:mainhand_check_vanilla run return -1
## Slot 4
execute if data block ~ ~1 ~ Items[{Slot:4b}] run data modify entity @s HandItems[0] set from block ~ ~1 ~ Items[{Slot:4b}]
execute if data block ~ ~1 ~ Items[{Slot:4b}] if predicate dnv.recyclecraft:mainhand_check_vanilla run return -1

return 0