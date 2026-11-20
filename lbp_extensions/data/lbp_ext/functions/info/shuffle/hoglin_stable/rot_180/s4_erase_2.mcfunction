execute positioned ~0.5 ~23 ~-31.5 as @e[tag=bastion_mob,dx=15,dy=11,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~10 ~25 ~-20 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~10 ~26 ~-20 {LootTable:"minecraft:empty"}
setblock ~10 ~26 ~-20 air
execute positioned ~9 ~26 ~-23 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~6 ~26 ~-23 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~16 ~23 ~-16 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_3/clockwise_180
