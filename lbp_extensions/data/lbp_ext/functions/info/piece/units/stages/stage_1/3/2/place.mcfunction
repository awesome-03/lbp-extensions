clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/units/stages/stage_1/3"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.3f,name:"lbp_ext:pieces/units/stages/stage_1/3_0"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-4.5 ~2 ~-3.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-3.5 ~4 ~-0.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-6.5 ~4 ~-5.5 run function bastionbuilder:internal/place/blocks/gold
function lbp_ext:info/rolls_to_inner
