execute positioned ~-15.5 ~23 ~-18.5 as @e[tag=bastion_mob,dx=15,dy=11,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-4 ~25 ~-12 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-4 ~26 ~-12 {LootTable:"minecraft:empty"}
setblock ~-4 ~26 ~-12 air
execute positioned ~-7 ~26 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-7 ~26 ~-8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~ ~23 ~-18 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_3/clockwise_90
