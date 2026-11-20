execute unless block ~ ~ ~ #lbp_ext:see_through align xyz positioned ~0.5 ~0.5 ~0.5 run function lbp_ext:info/aim/bastion
execute unless block ~ ~ ~ #lbp_ext:see_through align xyz positioned ~0.5 ~0.5 ~0.5 run function lbp_ext:info/piece/aim
execute unless block ~ ~ ~ #lbp_ext:see_through run scoreboard players set #ray lbp_info 0
scoreboard players remove #ray lbp_info 1
execute if score #ray lbp_info matches 1.. positioned ^ ^ ^0.5 run function lbp_ext:info/look_step
