function lbp_ext:info/look
scoreboard players set #dir lbp_info 1
execute if predicate practice:sneaking run scoreboard players set #dir lbp_info -1
scoreboard players set #shuffled lbp_info 0
execute at @e[type=area_effect_cloud, tag=lbp_info_origin, limit=1] run function lbp_ext:info/shuffle/bastion
execute if score #shuffled lbp_info matches 0 as @e[type=area_effect_cloud, tag=lbp_info_aimed, limit=1] at @s run function lbp_ext:info/piece/shuffle
execute if entity @e[type=area_effect_cloud, tag=lbp_info_aimed] run function lbp_ext:info/piece/say

execute if score #shuffled lbp_info matches 0 run title @s actionbar {"text":"Look at a rampart, gap, stall, housing or treasure room piece to shuffle it","color":"gray"}
execute if score #shuffled lbp_info matches 1 run function lbp_ext:info/render
