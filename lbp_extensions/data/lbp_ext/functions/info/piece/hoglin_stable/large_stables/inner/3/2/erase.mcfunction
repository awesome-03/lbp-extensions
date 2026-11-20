execute positioned ~-13.5 ~ ~-7.5 as @e[tag=bastion_mob,dx=13,dy=5,dz=7] at @s run function lbp_ext:info/despawn
execute positioned ~-13.5 ~-0.5 ~-7.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=13,dy=5,dz=7]
execute positioned ~-0.5 ~ ~-4.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-1 ~1 ~-5 {LootTable:"minecraft:empty"}
setblock ~-1 ~1 ~-5 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/hoglin_stable/large_stables/inner/3_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
