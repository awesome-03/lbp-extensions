execute store result score #drops lbp_info run gamerule doTileDrops
gamerule doTileDrops false
execute if score #slot8 lbp_info matches 0 unless score #to lbp_info matches 0 run function lbp_ext:info/shuffle/bridge/rot_90/s8_erase_0
execute if score #slot8 lbp_info matches 1 unless score #to lbp_info matches 1 run function lbp_ext:info/shuffle/bridge/rot_90/s8_erase_1
execute unless score #slot8 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~-32 ~24 ~2 run function bastionbuilder:internal/place/bridge/ramparts/rampart_0/rot_90
execute unless score #slot8 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~-39 ~36 ~5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot8 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~-32 ~24 ~2 run function bastionbuilder:internal/place/bridge/ramparts/rampart_1/rot_90
execute unless score #slot8 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~-39 ~40 ~9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot8 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~-40 ~40 ~9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot8 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~-44 ~40 ~9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot8 lbp_info = #to lbp_info run function lbp_ext:info/rolls_to_spots
scoreboard players operation #slot8 lbp_info = #to lbp_info
execute if score #drops lbp_info matches 1 run gamerule doTileDrops true
