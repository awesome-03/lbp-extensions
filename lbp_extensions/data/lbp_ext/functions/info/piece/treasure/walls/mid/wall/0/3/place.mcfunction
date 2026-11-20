clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",name:"lbp_ext:pieces/treasure/walls/mid/wall/0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.7f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_0"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.35f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_0"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.175f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
execute if score treasure_decay bastion.settings matches -1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.02f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_2"}
execute if score treasure_decay bastion.settings matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.01f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_2"}
execute if score treasure_decay bastion.settings matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",integrity:0.005f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_2"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~10.5 ~2 ~-0.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~13.5 ~2 ~-0.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~21.5 ~11 ~-1.5 run function bastionbuilder:internal/place/mobs/piglin_melee
execute positioned ~22.5 ~11 ~-2.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~22.5 ~10 ~-2.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
