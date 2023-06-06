# Called by function dnv.recyclecraft:compost/custom_composting/hopper_tick
# @s = composter marker
# position = composter marker position
# Creates the corresponding visual and sound effects.

particle minecraft:composter ~ ~ ~ 0.16 0.16 0.16 0.1 10 normal
playsound minecraft:block.composter.fill block @a ~ ~ ~
