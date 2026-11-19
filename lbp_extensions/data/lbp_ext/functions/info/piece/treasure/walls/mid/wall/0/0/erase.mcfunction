execute positioned ~-0.5 ~ ~-0.5 as @e[tag=bastion_mob,dx=4,dy=14,dz=23] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=4,dy=14,dz=23]
execute positioned ~3.5 ~10 ~22.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~3 ~11 ~22 {LootTable:"minecraft:empty"}
setblock ~3 ~11 ~22 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",name:"lbp_ext:pieces/treasure/walls/mid/wall/0_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
