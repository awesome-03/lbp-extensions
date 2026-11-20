clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/units/stages/stage_0/2"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.3f,name:"lbp_ext:pieces/units/stages/stage_0/2_0"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:polished_blackstone_bricks
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~4.5 ~4 ~-1.5 run function bastionbuilder:internal/place/mobs/piglin_melee
execute positioned ~1.5 ~4 ~-3.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~6.5 ~4 ~-6.5 run function bastionbuilder:internal/place/blocks/gold
execute positioned ~6.5 ~4 ~-0.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~6.5 ~3 ~-0.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
