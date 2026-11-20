execute positioned ~15.5 ~23 ~0.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=17] at @s run function lbp_ext:info/despawn
execute positioned ~23 ~39 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~24 ~39 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~27 ~39 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~23 ~40 ~9 {LootTable:"minecraft:empty"}
setblock ~23 ~40 ~9 air
data merge block ~24 ~40 ~9 {LootTable:"minecraft:empty"}
setblock ~24 ~40 ~9 air
data merge block ~27 ~40 ~9 {LootTable:"minecraft:empty"}
setblock ~27 ~40 ~9 air
execute positioned ~22 ~27 ~6 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~19 ~29 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~27 ~34 ~13 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~28 ~34 ~13 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~25 ~40 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~27 ~40 ~7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~23 ~40 ~6 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~27 ~42 ~12 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~16 ~23 ~16 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_1/counterclockwise_90
execute positioned ~16 ~36 ~18 run function lbp_ext:info/erase/hoglin_stable/rampart_plates/rampart_plate_1/counterclockwise_90
