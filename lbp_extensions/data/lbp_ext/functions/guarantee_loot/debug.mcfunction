# Run this by hand after a bastion generates to see what the guarantee did
scoreboard players set dbg_markers bastion.temp 0
scoreboard players set dbg_tagged bastion.temp 0
scoreboard players set dbg_locked bastion.temp 0
scoreboard players set dbg_unpacked bastion.temp 0
scoreboard players set dbg_sealed bastion.temp 0
scoreboard players set dbg_obsidian bastion.temp 0
scoreboard players set dbg_iron bastion.temp 0

execute store result score dbg_markers bastion.temp if entity @e[type=area_effect_cloud, tag=bastion_chest]
execute store result score dbg_tagged bastion.temp if entity @e[type=area_effect_cloud, tag=bastion_chest, tag=!stable_chest, tag=!chest_locked]
execute store result score dbg_locked bastion.temp if entity @e[type=area_effect_cloud, tag=chest_locked]
execute as @e[type=area_effect_cloud, tag=bastion_chest] at @s positioned ~ ~1 ~ run function lbp_ext:guarantee_loot/debug_chest

tellraw @a ["",{"text":"[ranked loot] ","color":"#14d3e0"},"setting=",{"score":{"name":"guarantee_loot","objective":"bastion.settings"}}," bastion=",{"score":{"name":"bastion_type","objective":"bastion.temp"}}]
tellraw @a ["",{"text":"[ranked loot] ","color":"#14d3e0"},"markers=",{"score":{"name":"dbg_markers","objective":"bastion.temp"}}," eligible=",{"score":{"name":"dbg_tagged","objective":"bastion.temp"}}," locked=",{"score":{"name":"dbg_locked","objective":"bastion.temp"}}]
tellraw @a ["",{"text":"[ranked loot] ","color":"#14d3e0"},"opened=",{"score":{"name":"dbg_unpacked","objective":"bastion.temp"}}," still sealed=",{"score":{"name":"dbg_sealed","objective":"bastion.temp"}}]
tellraw @a ["",{"text":"[ranked loot] ","color":"#14d3e0"},"totals now: ",{"score":{"name":"dbg_obsidian","objective":"bastion.temp"}}," obsidian, ",{"score":{"name":"dbg_iron","objective":"bastion.temp"}}," iron nuggets worth"]
