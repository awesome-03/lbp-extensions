execute positioned ~-0.5 ~-1 ~2.5 as @e[tag=bastion_mob,dx=15,dy=23,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~3 ~1 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~8 ~4 ~10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~8 ~11 ~14 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~11 ~13 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~11 ~12 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~-1 ~18 run function lbp_ext:info/erase/hoglin_stable/walls/side_wall_1/clockwise_180
