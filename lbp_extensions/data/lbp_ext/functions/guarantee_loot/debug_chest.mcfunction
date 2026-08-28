execute if data block ~ ~ ~ LootTable run scoreboard players add dbg_sealed bastion.temp 1
execute unless data block ~ ~ ~ LootTable run scoreboard players add dbg_unpacked bastion.temp 1

execute unless data block ~ ~ ~ LootTable run function lbp_ext:guarantee_loot/count_chest
execute unless data block ~ ~ ~ LootTable run scoreboard players operation dbg_obsidian bastion.temp += chest_obsidian bastion.temp
execute unless data block ~ ~ ~ LootTable run scoreboard players operation dbg_iron bastion.temp += chest_iron bastion.temp
