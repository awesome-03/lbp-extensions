execute positioned ~-16 ~4 ~-20 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~-19 ~3 ~-21 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-19 ~4 ~-21 {LootTable:"minecraft:empty"}
setblock ~-19 ~4 ~-21 air
execute positioned ~-16 ~4 ~-20 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
clone ~-21 1 ~-22 ~-15 6 ~-15 ~-21 ~1 ~-22
