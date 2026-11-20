execute positioned ~-49.5 ~24 ~-16.5 as @e[tag=bastion_mob,dx=15,dy=21,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-40 ~36 ~-13 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-40 ~37 ~-13 {LootTable:"minecraft:empty"}
setblock ~-40 ~37 ~-13 air
execute positioned ~-42 ~37 ~-13 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-34 ~24 ~-16 run function lbp_ext:info/erase/units/ramparts/ramparts_1/clockwise_90
