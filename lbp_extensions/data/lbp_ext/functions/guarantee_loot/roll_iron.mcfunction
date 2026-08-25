scoreboard players add reroll_tries bastion.temp 1
function lbp_ext:guarantee_loot/roll_chest
function lbp_ext:guarantee_loot/count_chest
execute if score chest_iron bastion.temp matches ..2 if score reroll_tries bastion.temp matches ..63 run function lbp_ext:guarantee_loot/roll_iron
