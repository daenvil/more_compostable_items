execute store result score @s dnv.compost.raycast_range run attribute @s block_interaction_range get -10
scoreboard players operation @s dnv.compost.raycast_range_doubled = @s dnv.compost.raycast_range
scoreboard players operation @s dnv.compost.raycast_range_doubled *= #dnv dnv.2
scoreboard players set @s dnv.compost.target_found 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function zz.dnv.compost:raycast/narrow
execute if score @s dnv.compost.target_found < @s dnv.compost.raycast_range anchored eyes positioned ^ ^ ^1 anchored feet run function zz.dnv.compost:raycast/wide
execute if score @s dnv.compost.target_found < @s dnv.compost.raycast_range_doubled run function zz.dnv.compost:raycast/success