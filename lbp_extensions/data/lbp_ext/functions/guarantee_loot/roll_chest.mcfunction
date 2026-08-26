# Replace all 27 slots so nothing from the previous roll is left over
execute if entity @s[tag=other_chest] run loot replace block ~ ~ ~ container.0 27 loot minecraft:chests/bastion_other
execute if entity @s[tag=bridge_chest] run loot replace block ~ ~ ~ container.0 27 loot minecraft:chests/bastion_bridge
execute if entity @s[tag=treasure_chest] run loot replace block ~ ~ ~ container.0 27 loot minecraft:chests/bastion_treasure
