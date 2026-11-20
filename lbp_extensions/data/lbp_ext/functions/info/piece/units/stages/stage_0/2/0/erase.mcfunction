execute positioned ~-0.5 ~ ~-0.5 as @e[tag=bastion_mob,dx=11,dy=6,dz=7] at @s run function lbp_ext:info/despawn
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[type=area_effect_cloud,tag=lbp_info_spot,dx=11,dy=6,dz=7]
execute positioned ~1.5 ~3 ~6.5 run kill @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1]
data merge block ~1 ~4 ~6 {LootTable:"minecraft:empty"}
setblock ~1 ~4 ~6 air
clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",name:"lbp_ext:pieces/units/stages/stage_0/2_erase"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
fill ~ 254 ~ ~ 255 ~ air
