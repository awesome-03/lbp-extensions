scoreboard players set #silence_feedback practice 1
gamerule sendCommandFeedback false

# 1. Teleport selected spawnpoint to player position and rotation
tp @e[type=area_effect_cloud, tag=selected_spawnpoint, sort=nearest, limit=1] ~ ~ ~ ~ ~

# Shuffled slots are part of the state now, so resets keep them
function lbp_ext:info/shuffle/bake

# 2. Enable rerun_terrain so resets reload this state
scoreboard players set rerun_terrain settings 0

# 3. Store player inventory into isolated state_loadout:data using native LBP sorting logic
function lbp_ext:store_state_inventory
scoreboard players set #has_state_inventory practice 1

# 4. Save the bastion terrain, mobs, and ground items in structure blocks (preserving exact native item tags)
execute as @e[type=item] run tag @s add saved_item
tag @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item,tag=!bastion_mob] add bastion_mob

# Preserve item pickup delay before saving
execute as @e[type=item, tag=saved_item] run data modify entity @s Item.tag.saved_pickup_delay set from entity @s PickupDelay
execute as @e[type=item, tag=saved_item] run data merge entity @s {PickupDelay:32767}

execute as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~100 ~
execute at @e[type=area_effect_cloud, tag=chunk_aligned, sort=nearest, limit=1] positioned ~ ~-100 ~ run function practice:_start/terrain/save
execute as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~-100 ~

# Restore live ground items' pickup delay immediately after saving and clean empty Item.tag compounds so items stack normally
execute as @e[type=item, tag=saved_item] run data modify entity @s PickupDelay set from entity @s Item.tag.saved_pickup_delay
execute as @e[type=item, tag=saved_item] run data remove entity @s Item.tag.saved_pickup_delay
execute as @e[type=item, tag=saved_item] if data entity @s Item{tag:{}} run data remove entity @s Item.tag

# 5. Confirmation feedback and sound
tellraw @a {"text":"Saved State & Inventory","color":"green"}
execute at @a run playsound ui.cartography_table.take_result player @a ~ ~ ~ 0.8 2

schedule function lbp_ext:enable_feedback 1t
