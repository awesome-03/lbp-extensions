execute positioned ~-0.5 ~ ~-4.5 as @e[tag=bastion_mob,dx=23,dy=14,dz=4] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-4.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=23,dy=14,dz=4]
execute positioned ~22.5 ~10 ~-2.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~22 ~11 ~-3 {LootTable:"minecraft:empty"}
setblock ~22 ~11 ~-3 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/treasure/walls/mid/wall/0_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
