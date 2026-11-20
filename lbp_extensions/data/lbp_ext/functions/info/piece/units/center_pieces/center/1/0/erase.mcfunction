execute positioned ~-0.5 ~ ~-0.5 as @e[tag=bastion_mob,dx=10,dy=7,dz=10] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=10,dy=7,dz=10]
execute positioned ~6.5 ~ ~9.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~6 ~1 ~9 {LootTable:"minecraft:empty"}
setblock ~6 ~1 ~9 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",name:"lbp_ext:pieces/units/center_pieces/center/1_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
