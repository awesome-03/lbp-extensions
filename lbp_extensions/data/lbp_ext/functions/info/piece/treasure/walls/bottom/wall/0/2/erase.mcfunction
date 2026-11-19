execute positioned ~-4.5 ~ ~-23.5 as @e[tag=bastion_mob,dx=4,dy=15,dz=23] at @s run function lbp_ext:info/despawn
execute positioned ~-4.5 ~-0.5 ~-23.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=4,dy=15,dz=23]
execute positioned ~-2.5 ~5 ~-1.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-3 ~6 ~-2 {LootTable:"minecraft:empty"}
setblock ~-3 ~6 ~-2 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
