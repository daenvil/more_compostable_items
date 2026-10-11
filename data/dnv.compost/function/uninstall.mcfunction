scoreboard objectives remove dnv.compost.target_found
scoreboard objectives remove dnv.compost.raycast_range
scoreboard objectives remove dnv.compost.raycast_range_doubled
scoreboard objectives remove dnv.2
scoreboard objectives remove dnv.compost.found
kill @e[type=marker,tag=dnv.compost.marker]
# Also remove pre-v2.0 markers just in case:
kill @e[type=armor_stand,tag=dnv.composter_marker]