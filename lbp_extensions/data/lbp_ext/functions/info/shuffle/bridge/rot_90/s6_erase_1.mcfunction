execute positioned ~0.5 ~24 ~-0.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=17] at @s run function lbp_ext:info/despawn
execute positioned ~9 ~40 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~8 ~40 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~4 ~40 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~9 ~41 ~9 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~9 air
data merge block ~8 ~41 ~9 {LootTable:"minecraft:empty"}
setblock ~8 ~41 ~9 air
data merge block ~4 ~41 ~9 {LootTable:"minecraft:empty"}
setblock ~4 ~41 ~9 air
execute positioned ~10 ~28 ~15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~10 ~41 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~41 ~10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~5 ~41 ~10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~41 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~43 ~5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~16 ~24 ~2 run function lbp_ext:info/erase/bridge/ramparts/rampart_1/clockwise_90
execute positioned ~16 ~37 ~ run function lbp_ext:info/erase/bridge/rampart_plates/plate_0/clockwise_90
