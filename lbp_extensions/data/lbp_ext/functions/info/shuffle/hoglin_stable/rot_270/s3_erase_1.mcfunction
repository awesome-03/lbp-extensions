execute positioned ~31.5 ~23 ~2.5 as @e[tag=bastion_mob,dx=15,dy=20,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~45 ~25 ~6 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~41 ~35 ~15 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~45 ~26 ~6 {LootTable:"minecraft:empty"}
setblock ~45 ~26 ~6 air
data merge block ~41 ~36 ~15 {LootTable:"minecraft:empty"}
setblock ~41 ~36 ~15 air
execute positioned ~45 ~26 ~11 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~43 ~26 ~9 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~44 ~26 ~7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~32 ~23 ~18 run function lbp_ext:info/erase/hoglin_stable/ramparts/ramparts_2/counterclockwise_90
