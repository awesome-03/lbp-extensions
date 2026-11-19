execute positioned ~2.5 ~-1 ~-47.5 as @e[tag=bastion_mob,dx=15,dy=23,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~9 ~5 ~-38 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~9 ~6 ~-38 {LootTable:"minecraft:empty"}
setblock ~9 ~6 ~-38 air
execute positioned ~10 ~1 ~-36 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~5 ~-40 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~5 ~-39 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~18 ~-1 ~-47 run function lbp_ext:info/erase/hoglin_stable/walls/side_wall_0/clockwise_90
