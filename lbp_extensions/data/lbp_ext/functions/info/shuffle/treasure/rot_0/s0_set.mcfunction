execute store result score #drops lbp_info run gamerule doTileDrops
gamerule doTileDrops false
execute if score #slot0 lbp_info matches 0 unless score #to lbp_info matches 0 run function lbp_ext:info/shuffle/treasure/rot_0/s0_erase_0
execute if score #slot0 lbp_info matches 1 unless score #to lbp_info matches 1 run function lbp_ext:info/shuffle/treasure/rot_0/s0_erase_1
execute if score #slot0 lbp_info matches 2 unless score #to lbp_info matches 2 run function lbp_ext:info/shuffle/treasure/rot_0/s0_erase_2
execute if score #slot0 lbp_info matches 3 unless score #to lbp_info matches 3 run function lbp_ext:info/shuffle/treasure/rot_0/s0_erase_3
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~15 ~1 ~15 run function bastionbuilder:internal/place/treasure/bases/centers/center_0/rot_0
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 0 positioned ~19 ~3 ~21 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~15 ~1 ~15 run function bastionbuilder:internal/place/treasure/bases/centers/center_1/rot_0
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~17 ~3 ~21 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 1 positioned ~19 ~3 ~21 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 2 positioned ~15 ~1 ~15 run function bastionbuilder:internal/place/treasure/bases/centers/center_2/rot_0
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 2 positioned ~16 ~2 ~19 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 3 positioned ~15 ~1 ~15 run function bastionbuilder:internal/place/treasure/bases/centers/center_3/rot_0
execute unless score #slot0 lbp_info = #to lbp_info if score #to lbp_info matches 3 positioned ~18 ~3 ~20 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
execute unless score #slot0 lbp_info = #to lbp_info run function lbp_ext:info/rolls_to_spots
scoreboard players operation #slot0 lbp_info = #to lbp_info
execute if score #drops lbp_info matches 1 run gamerule doTileDrops true
