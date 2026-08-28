scoreboard players add reroll_tries bastion.temp 1
function lbp_ext:guarantee_loot/reroll_chest
function lbp_ext:guarantee_loot/count_chest

# Keep going until the iron is covered without dropping the obsidian this chest was holding
scoreboard players operation new_iron bastion.temp = total_iron bastion.temp
scoreboard players operation new_iron bastion.temp += chest_iron bastion.temp
scoreboard players operation new_obsidian bastion.temp = total_obsidian bastion.temp
scoreboard players operation new_obsidian bastion.temp += chest_obsidian bastion.temp
scoreboard players set reroll_again bastion.temp 0
execute if score new_iron bastion.temp matches ..26 run scoreboard players set reroll_again bastion.temp 1
execute if score new_obsidian bastion.temp matches ..4 run scoreboard players set reroll_again bastion.temp 1
execute if score reroll_again bastion.temp matches 1 if score reroll_tries bastion.temp matches ..63 run function lbp_ext:guarantee_loot/roll_iron
