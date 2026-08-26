# 1. Teleport selected spawnpoint to player position and rotation
tp @e[type=area_effect_cloud, tag=selected_spawnpoint, sort=nearest, limit=1] ~ ~ ~ ~ ~

# 2. Enable rerun_terrain so resets reload this state
scoreboard players set rerun_terrain settings 0

# 3. Store player inventory into isolated state_loadout:data using native LBP sorting logic
function lbp_ext:store_state_inventory
scoreboard players set #has_state_inventory practice 1

# 4. Save the bastion terrain, mobs, and ground items in structure blocks (preserving exact native item tags)
execute as @e[type=item] run tag @s add saved_item
execute as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~100 ~
execute at @e[type=area_effect_cloud, tag=chunk_aligned, sort=nearest, limit=1] positioned ~ ~-100 ~ run function practice:_start/terrain/save
execute as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~-100 ~

# 5. Confirmation feedback and sound
tellraw @a {"text":"Saved State & Inventory","color":"green"}
execute at @a run playsound ui.cartography_table.take_result player @a ~ ~ ~ 0.8 2
