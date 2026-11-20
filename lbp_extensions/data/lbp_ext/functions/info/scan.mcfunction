# Runs at the bastion origin right after LBP builds it
kill @e[type=area_effect_cloud, tag=lbp_info_spot]
kill @e[type=area_effect_cloud, tag=lbp_info_origin]
kill @e[type=area_effect_cloud, tag=lbp_info_piece]
scoreboard players add #bid lbp_info 1
scoreboard players operation #type lbp_info = bastion_type bastion.temp
scoreboard players operation #rot lbp_info = bastion_rotation bastion.temp

# Labels get redrawn from this marker, so it doesn't matter who toggles them or from where
summon area_effect_cloud ~ ~ ~ {Tags:["lbp_info_origin"], Duration:2147483647, Radius:0f, WaitTime:0}
scoreboard players operation @e[type=area_effect_cloud, tag=lbp_info_origin] lbp_info = #bid lbp_info

function lbp_ext:info/detect/bastion
# Stalls and housing units, from the layout LBP picked
function lbp_ext:info/layout/bastion

# Keep the rolled spots around, interior labels are drawn from them
execute as @e[type=area_effect_cloud, tag=lbp_info_roll] run scoreboard players operation @s lbp_info = #bid lbp_info
tag @e[type=area_effect_cloud, tag=lbp_info_roll] add lbp_info_spot
tag @e[type=area_effect_cloud, tag=lbp_info_spot] remove lbp_info_roll
