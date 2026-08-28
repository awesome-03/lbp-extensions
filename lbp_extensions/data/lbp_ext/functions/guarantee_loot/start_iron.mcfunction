# Take this chest out of the totals while it gets rerolled
function lbp_ext:guarantee_loot/count_chest
scoreboard players operation total_obsidian bastion.temp -= chest_obsidian bastion.temp
scoreboard players operation total_iron bastion.temp -= chest_iron bastion.temp

scoreboard players set reroll_tries bastion.temp 0
function lbp_ext:guarantee_loot/roll_iron

scoreboard players operation total_obsidian bastion.temp += chest_obsidian bastion.temp
scoreboard players operation total_iron bastion.temp += chest_iron bastion.temp
tag @s add chest_locked
