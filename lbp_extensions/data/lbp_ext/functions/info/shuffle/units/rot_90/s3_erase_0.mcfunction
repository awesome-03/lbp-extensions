execute positioned ~-49.5 ~24 ~-16.5 as @e[tag=bastion_mob,dx=15,dy=31,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-41 ~40 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-42 ~40 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-46 ~40 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-41 ~41 ~-9 {LootTable:"minecraft:empty"}
setblock ~-41 ~41 ~-9 air
data merge block ~-42 ~41 ~-9 {LootTable:"minecraft:empty"}
setblock ~-42 ~41 ~-9 air
data merge block ~-46 ~41 ~-9 {LootTable:"minecraft:empty"}
setblock ~-46 ~41 ~-9 air
execute positioned ~-43 ~41 ~-9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-39 ~41 ~-8 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-46 ~41 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-43 ~41 ~-6 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-34 ~24 ~-16 run function lbp_ext:info/erase/units/ramparts/ramparts_0/clockwise_90
