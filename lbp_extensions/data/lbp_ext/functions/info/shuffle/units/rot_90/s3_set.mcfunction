execute store result score #drops lbp_info run gamerule doTileDrops
gamerule doTileDrops false
execute if score #slot3 lbp_info matches 0 unless score #to lbp_info matches 0 run function lbp_ext:info/shuffle/units/rot_90/s3_erase_0
execute if score #slot3 lbp_info matches 1 unless score #to lbp_info matches 1 run function lbp_ext:info/shuffle/units/rot_90/s3_erase_1
execute if score #slot3 lbp_info matches 2 unless score #to lbp_info matches 2 run function lbp_ext:info/shuffle/units/rot_90/s3_erase_2
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~-34 ~24 ~-16 run function bastionbuilder:internal/place/units/ramparts/ramparts_0/rot_90
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~-41 ~40 ~-9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~-42 ~40 ~-9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~-46 ~40 ~-9 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~-34 ~24 ~-16 run function bastionbuilder:internal/place/units/ramparts/ramparts_1/rot_90
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~-40 ~36 ~-13 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot3 lbp_info = #to lbp_info if score #to lbp_info matches 2 positioned ~-34 ~24 ~-16 run function bastionbuilder:internal/place/units/ramparts/ramparts_2/rot_90
execute unless score #slot3 lbp_info = #to lbp_info run function lbp_ext:info/rolls_to_spots
scoreboard players operation #slot3 lbp_info = #to lbp_info
execute if score #drops lbp_info matches 1 run gamerule doTileDrops true
