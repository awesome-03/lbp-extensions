scoreboard players set chest_obsidian bastion.temp 0
scoreboard players set chest_iron bastion.temp 0

data remove storage lbp_ext:loot items
data modify storage lbp_ext:loot items set from block ~ ~ ~ Items
execute if data storage lbp_ext:loot items[0] run function lbp_ext:guarantee_loot/count
