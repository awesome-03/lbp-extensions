clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/units/stages/stage_0/0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.3f,name:"lbp_ext:pieces/units/stages/stage_0/0_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.01f,name:"lbp_ext:pieces/units/stages/stage_0/0_1"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~6.5 ~1 ~-6.5 run function bastionbuilder:internal/place/blocks/gold
execute positioned ~1.5 ~2 ~-6.5 run function bastionbuilder:internal/place/mobs/piglin
function lbp_ext:info/rolls_to_inner
