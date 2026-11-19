# LBP3's roll, plus a marker so lbp_ext:info knows a spot was rolled here
summon area_effect_cloud ~ ~ ~ {Tags:["lbp_info_roll","lbp_info_piglin"],Duration:2147483647,Radius:0f,WaitTime:0}

execute if score bastion_mobs bastion.settings matches 1 run scoreboard players set max bastion.rng 10
execute if score bastion_mobs bastion.settings matches 1 run function bastionbuilder:internal/utils/rng/new_int

execute if score bastion_mobs bastion.settings matches 1 run execute if score out bastion.rng matches 1 run function bastionbuilder:internal/foundations/mobs/melee_piglin
execute if score bastion_mobs bastion.settings matches 1 run execute if score out bastion.rng matches 2..5 run function bastionbuilder:internal/foundations/mobs/sword_piglin
execute if score bastion_mobs bastion.settings matches 1 run execute if score out bastion.rng matches 6..9 run function bastionbuilder:internal/foundations/mobs/crossbow_piglin

execute if score bastion_mobs bastion.settings matches 1 run fill ~ ~ ~ ~ ~1 ~ air
