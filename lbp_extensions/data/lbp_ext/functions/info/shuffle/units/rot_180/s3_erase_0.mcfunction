execute positioned ~0.5 ~24 ~-49.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~9 ~40 ~-41 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~9 ~40 ~-42 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~9 ~40 ~-46 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~9 ~41 ~-41 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~-41 air
data merge block ~9 ~41 ~-42 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~-42 air
data merge block ~9 ~41 ~-46 {LootTable:"minecraft:empty"}
setblock ~9 ~41 ~-46 air
execute positioned ~9 ~41 ~-43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~8 ~41 ~-39 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~7 ~41 ~-46 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~6 ~41 ~-43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~16 ~24 ~-34 run function lbp_ext:info/erase/units/ramparts/ramparts_0/clockwise_180
