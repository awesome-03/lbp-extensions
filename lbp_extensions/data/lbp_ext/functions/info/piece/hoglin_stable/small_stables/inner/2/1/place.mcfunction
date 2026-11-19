clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",name:"lbp_ext:pieces/hoglin_stable/small_stables/inner/2"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.1f,name:"lbp_ext:pieces/hoglin_stable/small_stables/inner/2_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.01f,name:"lbp_ext:pieces/hoglin_stable/small_stables/inner/2_1"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:polished_blackstone_bricks
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-1.5 ~1 ~4.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-3.5 ~1 ~6.5 run function bastionbuilder:internal/place/mobs/piglin_melee
execute positioned ~-1.5 ~1 ~7.5 run function bastionbuilder:internal/place/mobs/hoglin
execute positioned ~-5.5 ~1 ~3.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~-5.5 ~ ~3.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
