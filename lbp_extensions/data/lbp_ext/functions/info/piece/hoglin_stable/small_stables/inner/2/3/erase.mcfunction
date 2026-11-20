execute positioned ~-0.5 ~ ~-11.5 as @e[tag=bastion_mob,dx=7,dy=5,dz=11] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-11.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=7,dy=5,dz=11]
execute positioned ~6.5 ~ ~-2.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~6 ~1 ~-3 {LootTable:"minecraft:empty"}
setblock ~6 ~1 ~-3 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/hoglin_stable/small_stables/inner/2_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
