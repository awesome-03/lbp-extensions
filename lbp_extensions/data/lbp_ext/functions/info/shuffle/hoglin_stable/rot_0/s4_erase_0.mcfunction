execute positioned ~-18.5 ~23 ~15.5 as @e[tag=bastion_mob,dx=17,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-9 ~39 ~23 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-9 ~39 ~24 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-9 ~39 ~27 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-9 ~40 ~23 {LootTable:"minecraft:empty"}
setblock ~-9 ~40 ~23 air
data merge block ~-9 ~40 ~24 {LootTable:"minecraft:empty"}
setblock ~-9 ~40 ~24 air
data merge block ~-9 ~40 ~27 {LootTable:"minecraft:empty"}
setblock ~-9 ~40 ~27 air
execute positioned ~-6 ~27 ~22 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-9 ~29 ~19 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-13 ~34 ~27 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-13 ~34 ~28 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-9 ~40 ~25 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-7 ~40 ~27 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-6 ~40 ~23 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-12 ~42 ~27 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-16 ~23 ~16 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_1/none
execute positioned ~-18 ~36 ~16 run function lbp_ext:info/erase/hoglin_stable/rampart_plates/rampart_plate_1/none
