execute positioned ~2.5 ~23 ~-15.5 as @e[tag=bastion_mob,dx=15,dy=20,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~6 ~25 ~-13 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~15 ~35 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~6 ~26 ~-13 {LootTable:"minecraft:empty"}
setblock ~6 ~26 ~-13 air
data merge block ~15 ~36 ~-9 {LootTable:"minecraft:empty"}
setblock ~15 ~36 ~-9 air
execute positioned ~11 ~26 ~-13 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~26 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~26 ~-12 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~18 ~23 ~ run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_2/clockwise_180
