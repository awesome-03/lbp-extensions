# LBP3's roll, plus a marker so lbp_ext:info knows a spot was rolled here
summon area_effect_cloud ~ ~ ~ {Tags:["lbp_info_roll","lbp_info_hoglin"],Duration:2147483647,Radius:0f,WaitTime:0}

execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 run scoreboard players set max bastion.rng 30
execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 run function bastionbuilder:internal/utils/rng/new_int

execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 if score out bastion.rng matches 1 run function bastionbuilder:internal/foundations/mobs/baby_hoglin
execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 if score out bastion.rng matches 2..20 run function bastionbuilder:internal/foundations/mobs/hoglin

execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 if score out bastion.rng matches 1 run fill ~ ~ ~ ~1 ~2 ~-1 air
execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 if score out bastion.rng matches 2 run fill ~ ~ ~ ~1 ~2 ~1 air
execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 if score out bastion.rng matches 3 run fill ~ ~ ~ ~-1 ~2 ~1 air
execute if score bastion_mobs bastion.settings matches 1 if score hoglins bastion.settings matches 0 if score out bastion.rng matches 4 run fill ~ ~ ~ ~-1 ~2 ~-1 air
