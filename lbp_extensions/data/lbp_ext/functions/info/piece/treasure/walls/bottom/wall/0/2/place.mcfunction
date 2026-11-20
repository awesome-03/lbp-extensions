clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",name:"lbp_ext:pieces/treasure/walls/bottom/wall/0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.7f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_0"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.35f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_0"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.175f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.02f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_2"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.01f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_2"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",integrity:0.005f,name:"lbp_ext:pieces/treasure/walls/bottom/wall/0_2"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:polished_blackstone_bricks
setblock ~ ~1 ~ minecraft:polished_blackstone_bricks
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-1.5 ~6 ~-2.5 run function bastionbuilder:internal/place/mobs/piglin_melee
execute positioned ~-1.5 ~6 ~-21.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-2.5 ~6 ~-1.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~-2.5 ~5 ~-1.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
