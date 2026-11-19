execute positioned ~1.5 ~24 ~-16.5 as @e[tag=bastion_mob,dx=15,dy=21,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~5 ~36 ~-9 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~5 ~37 ~-9 {LootTable:"minecraft:empty"}
setblock ~5 ~37 ~-9 air
execute positioned ~16 ~27 ~-7 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~29 ~-10 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~2 ~24 ~-16 run function lbp_ext:info/erase/bridge/ramparts/rampart_0/none
