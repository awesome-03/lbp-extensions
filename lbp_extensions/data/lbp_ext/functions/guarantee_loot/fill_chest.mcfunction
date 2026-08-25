function lbp_ext:guarantee_loot/roll_chest
function lbp_ext:guarantee_loot/count_chest
scoreboard players operation total_obsidian bastion.temp += chest_obsidian bastion.temp

# Lock the first chest that already has 3 iron so the obsidian reroll leaves it alone
execute if score chest_iron bastion.temp matches 3.. if score best_iron bastion.temp matches ..2 run tag @s add chest_locked
execute if score chest_iron bastion.temp > best_iron bastion.temp run scoreboard players operation best_iron bastion.temp = chest_iron bastion.temp
