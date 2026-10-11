
schedule function zz.dnv.compost:items_1s 1s
scoreboard objectives add dnv.compost.target_found dummy
scoreboard objectives add dnv.compost.raycast_range dummy
scoreboard objectives add dnv.compost.raycast_range_doubled dummy
scoreboard objectives add dnv.2 dummy
scoreboard players set #dnv dnv.2 2
schedule function zz.dnv.compost:composters_1s 30t
schedule function zz.dnv.compost:hopper_minecarts_1s 35t
scoreboard objectives add dnv.compost.found dummy
function zz.dnv.compost:replace_old_markers