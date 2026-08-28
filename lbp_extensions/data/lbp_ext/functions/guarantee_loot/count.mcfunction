# Items[0]{id:...} isn't a valid path, so copy the stack out first
data modify storage lbp_ext:loot stack set from storage lbp_ext:loot items[0]

scoreboard players set stack_count bastion.temp 0
execute if data storage lbp_ext:loot stack{id:"minecraft:obsidian"} store result score stack_count bastion.temp run data get storage lbp_ext:loot stack.Count
scoreboard players operation chest_obsidian bastion.temp += stack_count bastion.temp

# An ingot is worth 9 nuggets
scoreboard players set stack_count bastion.temp 0
execute if data storage lbp_ext:loot stack{id:"minecraft:iron_ingot"} store result score stack_count bastion.temp run data get storage lbp_ext:loot stack.Count 9
execute if data storage lbp_ext:loot stack{id:"minecraft:iron_nugget"} store result score stack_count bastion.temp run data get storage lbp_ext:loot stack.Count
scoreboard players operation chest_iron bastion.temp += stack_count bastion.temp

data remove storage lbp_ext:loot items[0]
execute if data storage lbp_ext:loot items[0] run function lbp_ext:guarantee_loot/count
