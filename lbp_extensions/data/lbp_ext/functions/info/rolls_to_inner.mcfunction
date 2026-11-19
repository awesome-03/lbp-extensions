# A swapped in stall or housing unit rolls its mobs like LBP does, its new spots are inner ones
execute as @e[type=area_effect_cloud, tag=lbp_info_roll] run scoreboard players operation @s lbp_info = #bid lbp_info
tag @e[type=area_effect_cloud, tag=lbp_info_roll] add lbp_info_spot
tag @e[type=area_effect_cloud, tag=lbp_info_roll] remove lbp_info_roll
