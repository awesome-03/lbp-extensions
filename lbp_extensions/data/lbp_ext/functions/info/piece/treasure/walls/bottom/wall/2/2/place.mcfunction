clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/treasure/walls/bottom/wall/2"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.35f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/2_0"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.7f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/2_0"}
execute if score treasure_decay bastion.settings matches 2 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.175f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/2_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.01f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/2_2"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.02f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/2_2"}
execute if score treasure_decay bastion.settings matches 2 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.005f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/2_2"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:polished_blackstone_bricks
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-0.5 ~6 ~-5.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-0.5 ~6 ~-19.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-1.5 ~6 ~-14.5 run function bastionbuilder:internal/place/mobs/piglin
function lbp_ext:info/rolls_to_inner
