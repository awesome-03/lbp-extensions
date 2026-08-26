# Only kill items if generating a new random bastion, preserve items for state reruns
execute if score rerun_terrain settings matches 1 run kill @e[type=item]

gamerule doMobLoot true
gamerule doTileDrops true

# Update each chest loot seed based on the bastions seed
function bastionbuilder:internal/utils/load_settings
execute at @e[type=area_effect_cloud, tag=chunk_aligned] at @e[type=area_effect_cloud, tag=bastion_chest, sort=nearest] positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed

# Activate lava fix for bridge
execute if score bridge_lava_fix bastion.settings matches 1 if score bastion_type bastion.temp matches 1 run function bastionbuilder:internal/lava_fix/lava_fix
