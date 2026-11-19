execute positioned ~2.5 ~23 ~-47.5 as @e[tag=bastion_mob,dx=17,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~11 ~39 ~-39 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~11 ~39 ~-40 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~11 ~39 ~-43 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~11 ~40 ~-39 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~-39 air
data merge block ~11 ~40 ~-40 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~-40 air
data merge block ~11 ~40 ~-43 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~-43 air
execute positioned ~8 ~27 ~-38 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~29 ~-35 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~34 ~-43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~34 ~-44 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~40 ~-41 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~40 ~-43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~8 ~40 ~-39 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~14 ~42 ~-43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~18 ~23 ~-32 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_1/clockwise_180
execute positioned ~20 ~36 ~-32 run function lbp_ext:info/erase/hoglin_stable/rampart_plates/rampart_plate_1/clockwise_180
