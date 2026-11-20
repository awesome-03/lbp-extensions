execute positioned ~15.5 ~23 ~0.5 as @e[tag=bastion_mob,dx=15,dy=11,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~20 ~25 ~10 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~20 ~26 ~10 {LootTable:"minecraft:empty"}
setblock ~20 ~26 ~10 air
execute positioned ~23 ~26 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~23 ~26 ~6 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~16 ~23 ~16 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_3/counterclockwise_90
