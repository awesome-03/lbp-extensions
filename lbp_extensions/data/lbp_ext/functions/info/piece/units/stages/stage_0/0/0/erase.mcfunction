execute positioned ~-0.5 ~ ~-0.5 as @e[tag=bastion_mob,dx=11,dy=6,dz=7] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=11,dy=6,dz=7]
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",name:"lbp_ext:pieces/units/stages/stage_0/0_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
