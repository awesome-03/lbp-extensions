execute positioned ~2.5 ~23 ~-15.5 as @e[tag=bastion_mob,dx=15,dy=11,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~12 ~25 ~-4 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~12 ~26 ~-4 {LootTable:"minecraft:empty"}
setblock ~12 ~26 ~-4 air
execute positioned ~11 ~26 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~8 ~26 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~18 ~23 ~ run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_3/clockwise_180
