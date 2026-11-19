execute positioned ~-16.5 ~24 ~-17.5 as @e[tag=bastion_mob,dx=15,dy=21,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~-9 ~36 ~-5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-9 ~37 ~-5 {LootTable:"minecraft:empty"}
setblock ~-9 ~37 ~-5 air
execute positioned ~-7 ~27 ~-16 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-10 ~29 ~-15 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~-16 ~24 ~-2 run function lbp_ext:info/erase/bridge/ramparts/rampart_0/counterclockwise_90
