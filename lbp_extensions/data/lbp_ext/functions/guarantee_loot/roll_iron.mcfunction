scoreboard players add reroll_tries bastion.temp 1
function lbp_ext:guarantee_loot/reroll_chest
function lbp_ext:guarantee_loot/count_chest

# Reroll until iron is covered and the obsidian this chest had is still there
scoreboard players operation new_iron bastion.temp = total_iron bastion.temp
scoreboard players operation new_iron bastion.temp += chest_iron bastion.temp
scoreboard players operation new_obsidian bastion.temp = total_obsidian bastion.temp
scoreboard players operation new_obsidian bastion.temp += chest_obsidian bastion.temp
execute if score new_iron bastion.temp matches ..26 if score reroll_tries bastion.temp matches ..63 run function lbp_ext:guarantee_loot/roll_iron
execute if score new_obsidian bastion.temp matches ..4 if score reroll_tries bastion.temp matches ..63 run function lbp_ext:guarantee_loot/roll_iron
