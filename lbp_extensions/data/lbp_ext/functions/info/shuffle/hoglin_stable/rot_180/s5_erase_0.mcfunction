execute positioned ~2.5 ~23 ~-15.5 as @e[tag=bastion_mob,dx=17,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~11 ~39 ~-7 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~11 ~39 ~-8 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~11 ~39 ~-11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~11 ~40 ~-7 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~-7 air
data merge block ~11 ~40 ~-8 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~-8 air
data merge block ~11 ~40 ~-11 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~-11 air
execute positioned ~8 ~27 ~-6 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~29 ~-3 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~34 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~34 ~-12 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~40 ~-9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~40 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~8 ~40 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~14 ~42 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~18 ~23 ~ run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_1/clockwise_180
execute positioned ~20 ~36 ~ run function lbp_ext:info/erase/hoglin_stable/rampart_plates/rampart_plate_1/clockwise_180
