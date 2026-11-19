clone ~ ~ ~ ~ ~1 ~ ~ 254 ~
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",name:"lbp_ext:pieces/treasure/walls/mid/wall/0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.35f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_0"}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~ ~ structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",integrity:0.01f,name:"lbp_ext:pieces/treasure/walls/mid/wall/0_2"}
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air
fill ~ 254 ~ ~ 255 ~ air
execute positioned ~-9.5 ~2 ~1.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-12.5 ~2 ~1.5 run function bastionbuilder:internal/place/mobs/piglin
execute positioned ~-20.5 ~11 ~2.5 run function bastionbuilder:internal/place/mobs/piglin_melee
execute positioned ~-21.5 ~11 ~3.5 run function bastionbuilder:internal/utils/chest_loot/mark_chest
execute positioned ~-21.5 ~10 ~3.5 as @e[type=area_effect_cloud,tag=bastion_chest,distance=..0.1] at @s positioned ~ ~1 ~ run function bastionbuilder:internal/utils/chest_loot/update_chest_seed
function lbp_ext:info/rolls_to_inner
