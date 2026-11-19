execute positioned ~-0.5 ~24 ~-16.5 as @e[tag=bastion_mob,dx=17,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~9 ~40 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~9 ~40 ~-8 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~9 ~40 ~-4 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~9 ~41 ~-9 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~-9 air
data merge block ~9 ~41 ~-8 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~-8 air
data merge block ~9 ~41 ~-4 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~-4 air
execute positioned ~15 ~28 ~-10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~41 ~-10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~10 ~41 ~-9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~10 ~41 ~-5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~41 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~5 ~43 ~-11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~2 ~24 ~-16 run function lbp_ext:info/erase/bridge/ramparts/rampart_1/none
execute positioned ~ ~37 ~-16 run function lbp_ext:info/erase/bridge/rampart_plates/plate_0/none
