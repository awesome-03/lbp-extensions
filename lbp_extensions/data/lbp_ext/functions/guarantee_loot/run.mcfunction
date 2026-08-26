# Treasure chests below the top lower ledge are off limits
execute store result score min_chest_y bastion.temp run data get entity @e[type=area_effect_cloud, tag=chunk_aligned, limit=1] Pos[1]
scoreboard players add min_chest_y bastion.temp 36

# Tag each chest marker with its loot table (marker is 1 block below the chest)
execute as @e[type=area_effect_cloud, tag=bastion_chest] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/mark_chest

# Roll every chest that can hold obsidian or iron and count what it got
scoreboard players set total_obsidian bastion.temp 0
scoreboard players set best_iron bastion.temp 0
execute as @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/fill_chest

# Reroll a random chest until it has 3 iron, second chest in case the first runs out of tries
execute if score best_iron bastion.temp matches ..2 as @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_iron
execute if score best_iron bastion.temp matches ..2 as @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_iron

# Reroll a random generic chest until the bastion has 5 obsidian in total
execute if score total_obsidian bastion.temp matches ..4 as @e[type=area_effect_cloud, tag=other_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_obsidian
execute if score total_obsidian bastion.temp matches ..4 as @e[type=area_effect_cloud, tag=other_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_obsidian
