execute positioned ~-0.5 ~24 ~31.5 as @e[tag=bastion_mob,dx=17,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~9 ~40 ~39 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~9 ~40 ~40 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~9 ~40 ~44 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~9 ~41 ~39 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~39 air
data merge block ~9 ~41 ~40 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~40 air
data merge block ~9 ~41 ~44 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~44 air
execute positioned ~15 ~28 ~38 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~9 ~41 ~38 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~10 ~41 ~39 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~10 ~41 ~43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~11 ~41 ~41 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~5 ~43 ~37 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~2 ~24 ~32 run function lbp_ext:info/erase/bridge/ramparts/rampart_1/none
execute positioned ~ ~37 ~32 run function lbp_ext:info/erase/bridge/rampart_plates/plate_0/none
