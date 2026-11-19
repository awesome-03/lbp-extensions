clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",name:"lbp_ext:pieces/hoglin_stable/large_stables/inner/3"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.1f,name:"lbp_ext:pieces/hoglin_stable/large_stables/inner/3_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.01f,name:"lbp_ext:pieces/hoglin_stable/large_stables/inner/3_1"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:polished_blackstone_bricks
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-2.5 ~1 ~3.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-5.5 ~1 ~3.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-4.5 ~1 ~1.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~-4.5 ~ ~1.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
