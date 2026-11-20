effect clear @a fire_resistance

execute as @e[tag=bastion_mob] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
execute as @e[tag=bastion_mob] run data merge entity @s {NoAI: 0, Silent:0}

# Restore saved items' pickup delay and clean up empty Item.tag compounds so items stack normally in inventory
execute as @e[type=item, tag=saved_item] run data modify entity @s PickupDelay set from entity @s Item.tag.saved_pickup_delay
execute as @e[type=item, tag=saved_item] run data remove entity @s Item.tag.saved_pickup_delay
execute as @e[type=item, tag=saved_item] if data entity @s Item{tag:{}} run data remove entity @s Item.tag

team empty no_collison

execute if score ui practice matches 1 run scoreboard objectives setdisplay sidebar practice.info

execute as @a run attribute @s generic.knockback_resistance base set 0

function timer:start
execute if score ui practice matches 1 run function timer:display/show

function practice:_start/silent_gamemode/unschedule
execute as @a[gamemode=adventure] run function practice:_start/silent_gamemode/survival
# Bounding Boxes are structure block outlines, which the game only draws for players in creative
execute if score bastion_boxes bastion.settings matches 1 if score bastion_info bastion.settings matches 1.. run function practice:_start/silent_gamemode/creative

function practice:_start/run_tick

execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2

execute if score bastion_type bastion.temp matches 3 if score bastion_rotation bastion.temp matches 1 at @e[type=area_effect_cloud, tag=chunk_aligned] run data merge block ~18 ~7 ~26 {MinSpawnDelay:200s, SpawnCount:4s, Delay:0s}
execute if score bastion_type bastion.temp matches 3 if score bastion_rotation bastion.temp matches 2 at @e[type=area_effect_cloud, tag=chunk_aligned] run data merge block ~-26 ~7 ~18 {MinSpawnDelay:200s, SpawnCount:4s, Delay:0s}
execute if score bastion_type bastion.temp matches 3 if score bastion_rotation bastion.temp matches 3 at @e[type=area_effect_cloud, tag=chunk_aligned] run data merge block ~-18 ~7 ~-26 {MinSpawnDelay:200s, SpawnCount:4s, Delay:0s}
execute if score bastion_type bastion.temp matches 3 if score bastion_rotation bastion.temp matches 4 at @e[type=area_effect_cloud, tag=chunk_aligned] run data merge block ~26 ~7 ~-18 {MinSpawnDelay:200s, SpawnCount:4s, Delay:0s}

schedule function practice:_start/clear_forceload 1s
