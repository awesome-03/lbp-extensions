execute store result score #drops lbp_info run gamerule doTileDrops
gamerule doTileDrops false
execute if score #slot6 lbp_info matches 0 unless score #to lbp_info matches 0 run function lbp_ext:info/shuffle/bridge/rot_0/s6_erase_0
execute if score #slot6 lbp_info matches 1 unless score #to lbp_info matches 1 run function lbp_ext:info/shuffle/bridge/rot_0/s6_erase_1
execute unless score #slot6 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~2 ~24 ~-16 run function bastionbuilder:internal/place/bridge/ramparts/rampart_0/rot_0
execute unless score #slot6 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~5 ~36 ~-9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot6 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~2 ~24 ~-16 run function bastionbuilder:internal/place/bridge/ramparts/rampart_1/rot_0
execute unless score #slot6 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~9 ~40 ~-9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot6 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~9 ~40 ~-8 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot6 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~9 ~40 ~-4 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot6 lbp_info = #to lbp_info run function lbp_ext:info/rolls_to_spots
scoreboard players operation #slot6 lbp_info = #to lbp_info
execute if score #drops lbp_info matches 1 run gamerule doTileDrops true
