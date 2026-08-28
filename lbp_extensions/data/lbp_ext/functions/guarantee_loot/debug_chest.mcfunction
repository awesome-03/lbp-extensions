execute if data block ~ ~ ~ LootTable run scoreboard players add sealed_count bastion.temp 1
execute unless data block ~ ~ ~ LootTable run function lbp_ext:guarantee_loot/count_chest
execute unless data block ~ ~ ~ LootTable run scoreboard players operation total_obsidian bastion.temp += chest_obsidian bastion.temp
execute unless data block ~ ~ ~ LootTable run scoreboard players operation total_iron bastion.temp += chest_iron bastion.temp
