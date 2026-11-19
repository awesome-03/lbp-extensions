execute positioned ~-15.5 ~-1 ~-18.5 as @e[tag=bastion_mob,dx=15,dy=23,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-6 ~5 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-6 ~6 ~-9 {LootTable:"minecraft:empty"}
setblock ~-6 ~6 ~-9 air
execute positioned ~-4 ~1 ~-10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-8 ~5 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-7 ~5 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-15 ~-1 ~-18 run function lbp_ext:info/erase/hoglin_stable/walls/side_wall_0/none
