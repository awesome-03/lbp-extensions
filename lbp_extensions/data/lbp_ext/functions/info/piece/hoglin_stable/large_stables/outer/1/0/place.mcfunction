clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",name:"lbp_ext:pieces/hoglin_stable/large_stables/outer/1"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",integrity:0.1f,name:"lbp_ext:pieces/hoglin_stable/large_stables/outer/1_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",integrity:0.01f,name:"lbp_ext:pieces/hoglin_stable/large_stables/outer/1_1"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:polished_blackstone_bricks
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~7.5 ~1 ~4.5 run function bastionbuilder:internal/place/mobs/hoglin
execute positioned ~8.5 ~1 ~1.5 run function bastionbuilder:internal/place/blocks/gold
function lbp_ext:info/rolls_to_inner
