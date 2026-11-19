execute positioned ~-15.5 ~23 ~-18.5 as @e[tag=bastion_mob,dx=15,dy=20,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-13 ~25 ~-6 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-9 ~35 ~-15 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-13 ~26 ~-6 {LootTable:"minecraft:empty"}
setblock ~-13 ~26 ~-6 air
data merge block ~-9 ~36 ~-15 {LootTable:"minecraft:empty"}
setblock ~-9 ~36 ~-15 air
execute positioned ~-13 ~26 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-11 ~26 ~-9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-12 ~26 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~ ~23 ~-18 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_2/clockwise_90
