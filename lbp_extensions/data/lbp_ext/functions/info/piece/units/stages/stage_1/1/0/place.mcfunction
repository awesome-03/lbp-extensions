clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",name:"lbp_ext:pieces/units/stages/stage_1/1"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"NONE",integrity:0.3f,name:"lbp_ext:pieces/units/stages/stage_1/1_0"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~8.5 ~4 ~5.5 run function bastionbuilder:internal/place/blocks/gold
function lbp_ext:info/rolls_to_inner
