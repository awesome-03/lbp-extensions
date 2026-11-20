execute positioned ~31.5 ~23 ~2.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=17] at @s run function lbp_ext:info/despawn
execute positioned ~39 ~39 ~11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~40 ~39 ~11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~43 ~39 ~11 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~39 ~40 ~11 {LootTable:"minecraft:empty"}
setblock ~39 ~40 ~11 air
data merge block ~40 ~40 ~11 {LootTable:"minecraft:empty"}
setblock ~40 ~40 ~11 air
data merge block ~43 ~40 ~11 {LootTable:"minecraft:empty"}
setblock ~43 ~40 ~11 air
execute positioned ~38 ~27 ~8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~35 ~29 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~43 ~34 ~15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~44 ~34 ~15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~41 ~40 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~43 ~40 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~39 ~40 ~8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~43 ~42 ~14 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~32 ~23 ~18 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_1/counterclockwise_90
execute positioned ~32 ~36 ~20 run function lbp_ext:info/erase/hoglin_stable/rampart_plates/rampart_plate_1/counterclockwise_90
