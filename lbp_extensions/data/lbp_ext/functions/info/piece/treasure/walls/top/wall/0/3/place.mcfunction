clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/treasure/walls/top/wall/0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.7f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_0"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.35f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_0"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.175f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.2f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_1"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.1f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_1"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.05f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_1"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.02f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_2"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.01f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_2"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.005f,name:"lbp_ext:pieces/treasure/walls/top/wall/0_2"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
function lbp_ext:info/rolls_to_inner
