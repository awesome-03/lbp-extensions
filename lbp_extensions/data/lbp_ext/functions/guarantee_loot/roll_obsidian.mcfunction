scoreboard players add reroll_tries bastion.temp 1
function lbp_ext:guarantee_loot/roll_chest
function lbp_ext:guarantee_loot/count_chest

# Keep going until this chest plus the rest of the bastion reaches 5
scoreboard players operation new_total bastion.temp = total_obsidian bastion.temp
scoreboard players operation new_total bastion.temp += chest_obsidian bastion.temp
execute if score new_total bastion.temp matches ..4 if score reroll_tries bastion.temp matches ..63 run function lbp_ext:guarantee_loot/roll_obsidian
