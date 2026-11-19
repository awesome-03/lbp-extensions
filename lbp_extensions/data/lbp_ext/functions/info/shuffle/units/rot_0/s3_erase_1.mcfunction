execute positioned ~-16.5 ~24 ~33.5 as @e[tag=bastion_mob,dx=15,dy=21,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-13 ~36 ~40 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-13 ~37 ~40 {LootTable:"minecraft:empty"}
setblock ~-13 ~37 ~40 air
execute positioned ~-13 ~37 ~42 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-16 ~24 ~34 run function lbp_ext:info/erase/units/ramparts/ramparts_1/none
