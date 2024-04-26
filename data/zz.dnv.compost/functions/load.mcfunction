scoreboard objectives add dnv.comp.debug dummy
scoreboard objectives add dnv.comp.drop_on dummy
execute unless score dnv.dummy dnv.comp.drop_on matches 0..2 run scoreboard players set dnv.dummy dnv.comp.drop_on 1
scoreboard objectives add dnv.comp.has_marker dummy
scoreboard objectives add dnv.comp.deletion_timer dummy
scoreboard objectives add dnv.comp.found dummy
scoreboard objectives add dnv.comp.item_found dummy
scoreboard objectives add dnv.comp.hopper_slot dummy
scoreboard objectives add dnv.comp.item_count dummy
scoreboard objectives add dnv.comp.hopper_cd dummy
scoreboard objectives add dnv.comp.success dummy

scoreboard objectives add dnv.raycast_range dummy
scoreboard objectives add dnv.raycast_range_doubled dummy
scoreboard objectives add dnv.TWO dummy
scoreboard players set dnv.dummy dnv.TWO 2

execute if score dnv.dummy dnv.comp.drop_on matches 1 run schedule function zz.dnv.compost:drop-composting/update 3t replace

# Delete possible duplicates:
execute as @e[type=armor_stand,tag=dnv.composter_marker] at @s run function zz.dnv.compost:kill_if_duplicate