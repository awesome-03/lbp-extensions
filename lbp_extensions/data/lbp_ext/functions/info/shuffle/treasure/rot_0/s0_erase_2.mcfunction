execute positioned ~16 ~3 ~16 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~19 ~3 ~21 as @e[tag=bastion_mob,distance=..1] at @s run function lbp_ext:info/despawn
execute positioned ~16 ~2 ~19 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~16 ~3 ~19 {LootTable:"minecraft:empty"}
setblock ~16 ~3 ~19 air
execute positioned ~16 ~3 ~16 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~19 ~3 ~21 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
clone ~15 1 ~15 ~21 6 ~22 ~15 ~1 ~15
