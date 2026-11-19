execute positioned ~-0.5 ~ ~-4.5 as @e[tag=bastion_mob,dx=23,dy=14,dz=4] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-4.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=23,dy=14,dz=4]
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/treasure/walls/top/wall/1_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
