execute positioned ~-47.5 ~-1 ~-18.5 as @e[tag=bastion_mob,dx=15,dy=23,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-35 ~1 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-40 ~4 ~-10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-40 ~11 ~-14 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-39 ~11 ~-13 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-39 ~11 ~-12 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-47 ~-1 ~-18 run function lbp_ext:info/erase/hoglin_stable/walls/side_wall_1/none
