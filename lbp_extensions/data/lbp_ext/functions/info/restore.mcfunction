# Put every shuffled slot back to what LBP rolled, so a reset rebuilds over the real bastion
execute at @e[type=area_effect_cloud, tag=lbp_info_origin, limit=1] run function lbp_ext:info/restore/bastion
execute as @e[type=area_effect_cloud, tag=lbp_info_piece] if score @s lbp_info = #bid lbp_info unless score @s lbp_info_var = @s lbp_info_orig at @s run function lbp_ext:info/restore_piece
