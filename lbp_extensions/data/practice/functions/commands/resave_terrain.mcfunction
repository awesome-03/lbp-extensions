# Automatically enable rerun_terrain for this bastion
scoreboard players set rerun_terrain settings 0

# Save the bastion and current terrain
execute as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~100 ~
execute at @e[type=area_effect_cloud, tag=chunk_aligned, sort=nearest, limit=1] positioned ~ ~-100 ~ run function practice:_start/terrain/save
execute as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~-100 ~

schedule function practice:commands/messages/resave_terrain 1t
