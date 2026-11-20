clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",name:"lbp_ext:pieces/units/stages/stage_1/2"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.3f,name:"lbp_ext:pieces/units/stages/stage_1/2_0"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-2.5 ~2 ~9.5 run function bastionbuilder:internal/place/mobs/piglin_melee
execute positioned ~-5.5 ~1 ~7.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~-5.5 ~ ~7.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
