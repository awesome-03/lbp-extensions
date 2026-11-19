execute positioned ~-16 ~3 ~16 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~-21 ~3 ~19 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~-19 ~2 ~16 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-19 ~3 ~16 {LootTable:"minecraft:empty"}
setblock ~-19 ~3 ~16 air
execute positioned ~-16 ~3 ~16 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-21 ~3 ~19 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
clone ~-22 1 ~15 ~-15 6 ~21 ~-22 ~1 ~15
