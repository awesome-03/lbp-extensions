execute positioned ~-11.5 ~ ~-7.5 as @e[tag=bastion_mob,dx=11,dy=5,dz=7] at @s run function lbp_ext:info/despawn
execute positioned ~-11.5 ~-0.5 ~-7.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=11,dy=5,dz=7]
execute positioned ~-2.5 ~ ~-5.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~-3 ~1 ~-6 {LootTable:"minecraft:empty"}
setblock ~-3 ~1 ~-6 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/hoglin_stable/small_stables/inner/2_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
