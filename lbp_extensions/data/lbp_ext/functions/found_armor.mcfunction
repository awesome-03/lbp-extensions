execute store result storage loadout.global whole_inventory[-1].Slot byte 1 run scoreboard players remove #slot loadout.settings 100
data modify storage state_loadout:data armor append from storage loadout.global whole_inventory[-1]
data remove storage loadout.global whole_inventory[-1]

execute store result score #slot loadout.settings run data get storage loadout.global whole_inventory[-1].Slot
scoreboard players remove #slot_count loadout.settings 1
function lbp_ext:sort_armor
