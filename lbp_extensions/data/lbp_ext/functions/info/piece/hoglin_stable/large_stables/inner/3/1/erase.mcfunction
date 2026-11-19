execute positioned ~-7.5 ~ ~-0.5 as @e[tag=bastion_mob,dx=7,dy=5,dz=13] at @s run function lbp_ext:info/despawn
execute positioned ~-7.5 ~-0.5 ~-0.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=7,dy=5,dz=13]
execute positioned ~-4.5 ~ ~1.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-5 ~1 ~1 {LootTable:"minecraft:empty"}
setblock ~-5 ~1 ~1 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",name:"lbp_ext:pieces/hoglin_stable/large_stables/inner/3_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
