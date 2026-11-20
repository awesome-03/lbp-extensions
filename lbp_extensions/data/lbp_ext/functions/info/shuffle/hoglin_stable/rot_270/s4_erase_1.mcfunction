execute positioned ~15.5 ~23 ~0.5 as @e[tag=bastion_mob,dx=15,dy=20,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~29 ~25 ~4 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~25 ~35 ~13 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~29 ~26 ~4 {LootTable:"minecraft:empty"}
setblock ~29 ~26 ~4 air
data merge block ~25 ~36 ~13 {LootTable:"minecraft:empty"}
setblock ~25 ~36 ~13 air
execute positioned ~29 ~26 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~27 ~26 ~7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~28 ~26 ~5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~16 ~23 ~16 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_2/counterclockwise_90
