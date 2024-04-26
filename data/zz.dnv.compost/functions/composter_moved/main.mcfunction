# Scheduled by function zz.dnv.compost:marker_update

execute as @e[tag=dnv.composter_marker] at @s if score @s dnv.comp.deletion_timer matches 3.. run function zz.dnv.compost:composter_moved/check_directions