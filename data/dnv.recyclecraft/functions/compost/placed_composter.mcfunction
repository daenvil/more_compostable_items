# Triggered by advancement dnv.recyclecraft:placed_composter
# @s = player who placed the composter
# Revokes the trigger advancement and starts a search for the placed composter

advancement revoke @s only dnv.recyclecraft:placed_composter

scoreboard players set @s dnv.comp_found 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function dnv.recyclecraft:compost/find_placed_composter
execute if score @s dnv.comp.debug matches 1 if score @s dnv.comp_found matches ..-61 run tellraw @s "[dnv.compost:debug_mode] Placed composter could not be found, trying a wider search..."
execute if score @s dnv.comp_found matches ..-61 anchored eyes positioned ^ ^ ^1 anchored feet run function dnv.recyclecraft:compost/find_placed_composter_wide
execute if score @s dnv.comp.debug matches 1 if score @s dnv.comp_found matches ..-121 run tellraw @s "[dnv.compost:debug_mode] Placed composter was not found. Try placing it again while not moving and pointing to the center of a block."
