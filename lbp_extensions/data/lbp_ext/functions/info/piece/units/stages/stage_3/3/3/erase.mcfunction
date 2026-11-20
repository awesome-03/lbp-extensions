execute positioned ~-0.5 ~ ~-11.5 as @e[tag=bastion_mob,dx=7,dy=2,dz=11] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-11.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=7,dy=2,dz=11]
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/units/stages/stage_3/3_erase"}
setblock ~ ~1 ~ redstone_block
clone ~ 254 ~ ~ 254 ~ ~ ~ ~
clone ~ 255 ~ ~ 255 ~ ~ ~1 ~
fill ~ 254 ~ ~ 255 ~ air
