execute positioned ~1.5 ~24 ~31.5 as @e[tag=bastion_mob,dx=15,dy=21,dz=15] at @s run function lbp_ext:info/despawn
execute positioned ~5 ~36 ~39 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~5 ~37 ~39 {LootTable:"minecraft:empty"}
setblock ~5 ~37 ~39 air
execute positioned ~16 ~27 ~41 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~15 ~29 ~38 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,distance=..0.1]
execute positioned ~2 ~24 ~32 run function lbp_ext:info/erase/bridge/ramparts/rampart_0/none
