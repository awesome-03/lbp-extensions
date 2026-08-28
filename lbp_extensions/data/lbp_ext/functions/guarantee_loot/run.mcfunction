# Treasure chests below the top lower ledge are off limits
execute store result score min_chest_y bastion.temp run data get entity @e[type=area_effect_cloud, tag=chunk_aligned, limit=1] Pos[1]
scoreboard players add min_chest_y bastion.temp 36

# Tag each chest marker with its loot table (marker is 1 block below the chest)
execute as @e[type=area_effect_cloud, tag=bastion_chest] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/mark_chest

# Open and count every chest that can roll obsidian or iron (iron in nuggets)
scoreboard players set total_obsidian bastion.temp 0
scoreboard players set total_iron bastion.temp 0
execute as @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/fill_chest

# Reroll a generic chest until there is 5 obsidian, try a second one if the first runs out of tries
execute if score total_obsidian bastion.temp matches ..4 as @e[type=area_effect_cloud, tag=other_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_obsidian
execute if score total_obsidian bastion.temp matches ..4 as @e[type=area_effect_cloud, tag=other_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_obsidian

# Same for 3 iron (27 nuggets)
execute if score total_iron bastion.temp matches ..26 as @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_iron
execute if score total_iron bastion.temp matches ..26 as @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked, sort=random, limit=1] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/start_iron

execute if score logger practice matches 1 run tellraw @a ["",{"text":"Ranked loot","color":"#14d3e0"},": ",{"score":{"name":"total_obsidian","objective":"bastion.temp"}}," obsidian, ",{"score":{"name":"total_iron","objective":"bastion.temp"}}," iron (nuggets)"]
