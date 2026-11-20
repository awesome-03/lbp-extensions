execute positioned ~-13.5 ~ ~-7.5 as @e[tag=bastion_mob,dx=13,dy=5,dz=7] at @s run function lbp_ext:info/despawn
execute positioned ~-13.5 ~-0.5 ~-7.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=13,dy=5,dz=7]
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/hoglin_stable/large_stables/outer/3_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
