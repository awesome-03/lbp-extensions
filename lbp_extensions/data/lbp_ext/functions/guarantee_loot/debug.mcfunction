# Prints what the ranked loot pass did to the current bastion
scoreboard players set marker_count bastion.temp 0
scoreboard players set locked_count bastion.temp 0
scoreboard players set sealed_count bastion.temp 0
scoreboard players set total_obsidian bastion.temp 0
scoreboard players set total_iron bastion.temp 0

execute store result score marker_count bastion.temp if entity @e[type=area_effect_cloud, tag=bastion_chest]
execute store result score locked_count bastion.temp if entity @e[type=area_effect_cloud, tag=chest_locked]
execute as @e[type=area_effect_cloud, tag=bastion_chest] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/debug_chest

tellraw @a ["",{"text":"Ranked loot","color":"#14d3e0"},": setting ",{"score":{"name":"guarantee_loot","objective":"bastion.settings"}},", bastion ",{"score":{"name":"bastion_type","objective":"bastion.temp"}},", ",{"score":{"name":"marker_count","objective":"bastion.temp"}}," chests, ",{"score":{"name":"locked_count","objective":"bastion.temp"}}," locked, ",{"score":{"name":"sealed_count","objective":"bastion.temp"}}," unopened"]
tellraw @a ["",{"text":"Ranked loot","color":"#14d3e0"},": ",{"score":{"name":"total_obsidian","objective":"bastion.temp"}}," obsidian, ",{"score":{"name":"total_iron","objective":"bastion.temp"}}," iron (nuggets)"]
