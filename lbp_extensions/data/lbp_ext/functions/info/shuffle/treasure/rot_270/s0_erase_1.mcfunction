execute positioned ~18 ~4 ~-20 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~19 ~4 ~-20 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~21 ~3 ~-17 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
execute positioned ~21 ~3 ~-19 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~21 ~4 ~-17 {LootTable:"minecraft:empty"}
setblock ~21 ~4 ~-17 air
data merge block ~21 ~4 ~-19 {LootTable:"minecraft:empty"}
setblock ~21 ~4 ~-19 air
execute positioned ~18 ~4 ~-20 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~19 ~4 ~-20 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
clone ~15 1 ~-21 ~22 6 ~-15 ~15 ~1 ~-21
