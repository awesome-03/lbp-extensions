execute positioned ~-16.5 ~23 ~15.5 as @e[tag=bastion_mob,dx=15,dy=20,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-4 ~25 ~29 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-13 ~35 ~25 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-4 ~26 ~29 {LootTable:"minecraft:empty"}
setblock ~-4 ~26 ~29 air
data merge block ~-13 ~36 ~25 {LootTable:"minecraft:empty"}
setblock ~-13 ~36 ~25 air
execute positioned ~-9 ~26 ~29 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-7 ~26 ~27 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-5 ~26 ~28 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-16 ~23 ~16 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_2/none
