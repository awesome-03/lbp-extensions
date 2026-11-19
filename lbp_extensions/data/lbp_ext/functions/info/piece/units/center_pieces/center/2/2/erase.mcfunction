execute positioned ~-10.5 ~ ~-10.5 as @e[tag=bastion_mob,dx=10,dy=7,dz=10] at @s run function lbp_ext:info/despawn
execute positioned ~-10.5 ~-0.5 ~-10.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=10,dy=7,dz=10]
execute positioned ~-0.5 ~ ~-6.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-1 ~1 ~-7 {LootTable:"minecraft:empty"}
setblock ~-1 ~1 ~-7 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/units/center_pieces/center/2_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
