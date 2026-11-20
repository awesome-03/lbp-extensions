execute as @a[nbt=!{Health:0.0f}] if score #death_respawn_rerun practice matches 1 run function lbp_ext:handle_death_respawn

execute as @a at @s run function lbp_ext:check_dropped_axe

# Bastion Info leftovers from an older bastion or render, e.g. in chunks that were unloaded at the time
execute as @e[type=armor_stand, tag=lbp_info] unless score @s lbp_info = #gen lbp_info run kill @s
execute as @e[type=area_effect_cloud, tag=lbp_info_spot] unless score @s lbp_info = #bid lbp_info run kill @s
execute as @e[type=area_effect_cloud, tag=lbp_info_origin] unless score @s lbp_info = #bid lbp_info run kill @s
execute as @e[type=area_effect_cloud, tag=lbp_info_piece] unless score @s lbp_info = #bid lbp_info run kill @s

execute as @a[scores={lbp_info_use=1..}, nbt={SelectedItem:{tag:{lbp_shuffle:1b}}}] at @s run function lbp_ext:info/wand
scoreboard players reset @a[scores={lbp_info_use=1..}] lbp_info_use
