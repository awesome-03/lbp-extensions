# Which outer slot the block under the crosshair belongs to, -1 for none, or which stall or housing unit gets tagged
scoreboard players set #aim lbp_info -1
tag @e[type=area_effect_cloud, tag=lbp_info_aimed] remove lbp_info_aimed
scoreboard players set #ray lbp_info 192
execute anchored eyes positioned ^ ^ ^ run function lbp_ext:info/look_step
