# Cycle Bastion Info: Disabled -> Outer Parts -> Everything
scoreboard players add bastion_info bastion.settings 1
execute if score bastion_info bastion.settings matches 3.. run scoreboard players set bastion_info bastion.settings 0

function lbp_ext:info/render

execute at @a run playsound ui.cartography_table.take_result player @a ~ ~ ~ 0.8 2
