execute positioned ~2.5 ~-1 ~-15.5 as @e[tag=bastion_mob,dx=15,dy=23,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~11 ~1 ~-3 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~10 ~4 ~-8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~14 ~11 ~-8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~13 ~11 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~12 ~11 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~18 ~-1 ~-15 run function lbp_ext:info/erase/hoglin_stable/walls/side_wall_1/clockwise_90
