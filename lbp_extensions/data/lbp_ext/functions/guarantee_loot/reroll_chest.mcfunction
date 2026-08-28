# Clear the old roll, loot only fills empty slots
data modify block ~ ~ ~ Items set value []

# Reseed and open again
scoreboard players add current bastion.rng 1
execute if entity @s[tag=other_chest] run data merge block ~ ~ ~ {LootTable:"minecraft:chests/bastion_other"}
execute if entity @s[tag=bridge_chest] run data merge block ~ ~ ~ {LootTable:"minecraft:chests/bastion_bridge"}
execute store result block ~ ~ ~ LootTableSeed long 1 run scoreboard players get current bastion.rng
function lbp_ext:guarantee_loot/unpack
