# Scheduled by function dnv.recyclecraft:compost/marker_update

execute as @e[tag=dnv.composter_marker] at @s if score @s dnv.no_composter matches 3.. run function dnv.recyclecraft:compost/composter_moved/check_directions

# dnv.no_composter functions as a timer, to avoid checking a different marker which has moved withing 3 ticks of the one who scheduled the function.