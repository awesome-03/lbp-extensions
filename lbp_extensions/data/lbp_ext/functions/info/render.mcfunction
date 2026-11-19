# Labels from an older render are killed here, or by the tick once their chunk loads again
scoreboard players add #gen lbp_info 1
kill @e[type=armor_stand, tag=lbp_info]

execute if score bastion_info bastion.settings matches 1.. as @e[type=area_effect_cloud, tag=lbp_info_origin] if score @s lbp_info = #bid lbp_info at @s run function lbp_ext:info/labels
# Bastion Info is what turns all of it on, Entity Markers and Bounding Boxes included
execute if score bastion_markers bastion.settings matches 1 if score bastion_info bastion.settings matches 1.. as @e[type=area_effect_cloud, tag=lbp_info_spot] if score @s lbp_info = #bid lbp_info at @s run function lbp_ext:info/marker

execute as @e[type=armor_stand, tag=lbp_info_new] run scoreboard players operation @s lbp_info = #gen lbp_info
tag @e[type=armor_stand, tag=lbp_info_new] remove lbp_info_new

# Bounding Boxes are structure blocks hidden in the pieces. What they replaced goes back wherever one isn't wanted
# anymore, all of them when they're off, then they go in whatever each slot has now. They need Bastion Info on too:
# without it a run stays in survival, which can't see them or break one hidden in a wall
scoreboard players set #unbox lbp_info 1
execute if score bastion_boxes bastion.settings matches 1 if score bastion_info bastion.settings matches 1.. run scoreboard players set #unbox lbp_info 0
execute as @e[type=area_effect_cloud, tag=lbp_info_origin] if score @s lbp_info = #bid lbp_info at @s run function lbp_ext:info/unbox/bastion
execute if score #unbox lbp_info matches 0 as @e[type=area_effect_cloud, tag=lbp_info_origin] if score @s lbp_info = #bid lbp_info at @s run function lbp_ext:info/boxes/bastion
