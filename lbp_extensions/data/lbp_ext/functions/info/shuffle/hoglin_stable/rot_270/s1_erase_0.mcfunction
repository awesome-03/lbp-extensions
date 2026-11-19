execute positioned ~31.5 ~-1 ~2.5 as @e[tag=bastion_mob,dx=15,dy=23,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~38 ~5 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~38 ~6 ~9 {LootTable:"minecraft:empty"}
setblock ~38 ~6 ~9 air
execute positioned ~36 ~1 ~10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~40 ~5 ~7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~39 ~5 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~47 ~-1 ~18 run function lbp_ext:info/erase/hoglin_stable/walls/side_wall_0/clockwise_180
