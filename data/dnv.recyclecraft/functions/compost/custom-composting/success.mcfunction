# Called by function dnv.recyclecraft:compost/custom_composting/hopper_tick
# @s = composter marker
# position = composter marker position
# Increases composter level by 1, if possible, and creates the corresponding visual and sound effects.

execute if block ~ ~ ~ composter[level=6] run setblock ~ ~ ~ composter[level=7]
execute if block ~ ~ ~ composter[level=5] run setblock ~ ~ ~ composter[level=6]
execute if block ~ ~ ~ composter[level=4] run setblock ~ ~ ~ composter[level=5]
execute if block ~ ~ ~ composter[level=3] run setblock ~ ~ ~ composter[level=4]
execute if block ~ ~ ~ composter[level=2] run setblock ~ ~ ~ composter[level=3]
execute if block ~ ~ ~ composter[level=1] run setblock ~ ~ ~ composter[level=2]
execute if block ~ ~ ~ composter[level=0] run setblock ~ ~ ~ composter[level=1]

# Effects:

particle minecraft:composter ~ ~ ~ 0.16 0.16 0.16 0.1 10 normal
playsound minecraft:block.composter.fill_success block @a ~ ~ ~
