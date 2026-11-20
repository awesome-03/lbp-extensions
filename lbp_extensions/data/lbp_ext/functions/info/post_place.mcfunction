# Only a fresh generation leaves roll markers behind, reruns that load a saved state keep the last scan
execute store result score #fresh lbp_info if entity @e[type=area_effect_cloud, tag=lbp_info_roll]
execute if score #fresh lbp_info matches 1.. align xyz positioned ~0.5 ~ ~0.5 run function lbp_ext:info/scan

function lbp_ext:info/render
