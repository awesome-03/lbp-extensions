execute if data block ~ ~ ~ {LootTable:"minecraft:chests/bastion_other"} run tag @s add other_chest
execute if data block ~ ~ ~ {LootTable:"minecraft:chests/bastion_bridge"} run tag @s add bridge_chest
execute if data block ~ ~ ~ {LootTable:"minecraft:chests/bastion_treasure"} run tag @s add treasure_chest
execute if data block ~ ~ ~ {LootTable:"minecraft:chests/bastion_hoglin_stable"} run tag @s add stable_chest

# Already opened chests (save states) are left alone
execute unless data block ~ ~ ~ LootTable run tag @s add chest_locked

# Lock the bottom of treasure
execute if score bastion_type bastion.temp matches 3 store result score chest_y bastion.temp run data get entity @s Pos[1]
execute if score bastion_type bastion.temp matches 3 if score chest_y bastion.temp < min_chest_y bastion.temp run tag @s add chest_locked
