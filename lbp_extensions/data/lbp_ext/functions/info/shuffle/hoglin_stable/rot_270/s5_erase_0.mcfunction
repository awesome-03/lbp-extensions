execute positioned ~-0.5 ~23 ~2.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=17] at @s run function lbp_ext:info/despawn
execute positioned ~7 ~39 ~11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~8 ~39 ~11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~11 ~39 ~11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~7 ~40 ~11 {LootTable:"minecraft:empty"}
setblock ~7 ~40 ~11 air
data merge block ~8 ~40 ~11 {LootTable:"minecraft:empty"}
setblock ~8 ~40 ~11 air
data merge block ~11 ~40 ~11 {LootTable:"minecraft:empty"}
setblock ~11 ~40 ~11 air
execute positioned ~6 ~27 ~8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~3 ~29 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~34 ~15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~12 ~34 ~15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~40 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~40 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~40 ~8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~42 ~14 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~ ~23 ~18 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_1/counterclockwise_90
execute positioned ~ ~36 ~20 run function lbp_ext:info/erase/hoglin_stable/rampart_plates/rampart_plate_1/counterclockwise_90
