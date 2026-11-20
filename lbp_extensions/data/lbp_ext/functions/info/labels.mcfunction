function lbp_ext:info/draw/bastion

execute if score bastion_info bastion.settings matches 2 as @e[type=area_effect_cloud, tag=lbp_info_spot, tag=!lbp_info_outer] if score @s lbp_info = #bid lbp_info at @s run function lbp_ext:info/draw/spot
execute if score bastion_info bastion.settings matches 2 as @e[type=area_effect_cloud, tag=lbp_info_piece] if score @s lbp_info = #bid lbp_info at @s run function lbp_ext:info/piece/label
