scoreboard objectives add dnv.comp.debug dummy
scoreboard objectives add dnv.comp.drop_on dummy
execute unless score dnv.dummy dnv.comp.drop_on matches 0..2 run scoreboard players set dnv.dummy dnv.comp.drop_on 1
scoreboard objectives add dnv.cm_present dummy
scoreboard objectives add dnv.no_composter dummy
scoreboard objectives add dnv.comp_found dummy
scoreboard objectives add dnv.c_item_found dummy
scoreboard objectives add dnv.hopper_slot dummy
scoreboard objectives add dnv.c_item_count dummy
scoreboard objectives add dnv.hopper_cd dummy
scoreboard objectives add dnv.comp_success dummy
