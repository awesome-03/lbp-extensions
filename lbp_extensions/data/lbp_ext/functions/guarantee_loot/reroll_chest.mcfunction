# Vanilla only fills empty slots, so clear the last roll before opening it again
data modify block ~ ~ ~ Items set value []

# Give the chest the next seed and open it again
scoreboard players add current bastion.rng 1
execute if entity @s[tag=other_chest] run data merge block ~ ~ ~ {LootTable:"minecraft:chests/bastion_other"}
execute if entity @s[tag=bridge_chest] run data merge block ~ ~ ~ {LootTable:"minecraft:chests/bastion_bridge"}
execute if entity @s[tag=treasure_chest] run data merge block ~ ~ ~ {LootTable:"minecraft:chests/bastion_treasure"}
execute store result block ~ ~ ~ LootTableSeed long 1 run scoreboard players get current bastion.rng
function lbp_ext:guarantee_loot/unpack
