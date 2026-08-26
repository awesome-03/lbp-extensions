clear @s

execute in overworld run setblock -30000000 0 1602 yellow_shulker_box

execute if data storage state_loadout:data armor[0] in overworld run data modify block -30000000 0 1602 Items set from storage state_loadout:data armor
execute if data storage state_loadout:data armor[0] in overworld run loot replace entity @s armor.feet 4 mine -30000000 0 1602 air{drop_contents:1b}

execute if data storage state_loadout:data hotbar[0] in overworld run setblock -30000000 0 1602 yellow_shulker_box
execute if data storage state_loadout:data hotbar[0] in overworld run data modify block -30000000 0 1602 Items set from storage state_loadout:data hotbar
execute if data storage state_loadout:data hotbar[0] in overworld run loot replace entity @s hotbar.0 9 mine -30000000 0 1602 air{drop_contents:1b}

execute if data storage state_loadout:data inventory[0] in overworld run setblock -30000000 0 1602 yellow_shulker_box
execute if data storage state_loadout:data inventory[0] in overworld run data modify block -30000000 0 1602 Items set from storage state_loadout:data inventory
execute if data storage state_loadout:data inventory[0] in overworld run loot replace entity @s inventory.0 27 mine -30000000 0 1602 air{drop_contents:1b}

execute if data storage state_loadout:data offhand[0] in overworld run setblock -30000000 0 1602 yellow_shulker_box
execute if data storage state_loadout:data offhand[0] in overworld run data modify block -30000000 0 1602 Items set from storage state_loadout:data offhand
execute if data storage state_loadout:data offhand[0] in overworld run loot replace entity @s weapon.offhand 1 mine -30000000 0 1602 air{drop_contents:1b}

execute in overworld run setblock -30000000 0 1602 yellow_shulker_box
