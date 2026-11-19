execute positioned ~-47.5 ~24 ~-0.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=17] at @s run function lbp_ext:info/despawn
execute positioned ~-39 ~40 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-40 ~40 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-44 ~40 ~9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-39 ~41 ~9 {LootTable:"minecraft:empty"}
setblock ~-39 ~41 ~9 air
data merge block ~-40 ~41 ~9 {LootTable:"minecraft:empty"}
setblock ~-40 ~41 ~9 air
data merge block ~-44 ~41 ~9 {LootTable:"minecraft:empty"}
setblock ~-44 ~41 ~9 air
execute positioned ~-38 ~28 ~15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-38 ~41 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-39 ~41 ~10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-43 ~41 ~10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-41 ~41 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-37 ~43 ~5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-32 ~24 ~2 run function lbp_ext:info/erase/bridge/ramparts/rampart_1/clockwise_90
execute positioned ~-32 ~37 ~ run function lbp_ext:info/erase/bridge/rampart_plates/plate_0/clockwise_90
