# Called by function zz.dnv.compost:custom_composting/simulate
# @s and position = composter marker
# Creates the corresponding visual and sound effects.

particle minecraft:composter ~ ~0.5 ~ 0.16 0.16 0.16 0.1 10 normal
playsound minecraft:block.composter.fill block @a ~ ~ ~
