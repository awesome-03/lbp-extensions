execute positioned ~-18.5 ~23 ~31.5 as @e[tag=bastion_mob,dx=15,dy=20,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-6 ~25 ~45 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~-15 ~35 ~41 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-6 ~26 ~45 {LootTable:"minecraft:empty"}
setblock ~-6 ~26 ~45 air
data merge block ~-15 ~36 ~41 {LootTable:"minecraft:empty"}
setblock ~-15 ~36 ~41 air
execute positioned ~-11 ~26 ~45 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-9 ~26 ~43 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-7 ~26 ~44 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-18 ~23 ~32 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_2/none
