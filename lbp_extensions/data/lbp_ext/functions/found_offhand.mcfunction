execute store result storage loadout.global whole_inventory[-1].Slot byte 1 run scoreboard players set #slot loadout.settings 0
data modify storage state_loadout:data offhand append from storage loadout.global whole_inventory[-1]
data remove storage loadout.global whole_inventory[-1]

execute store result score #slot loadout.settings run data get storage loadout.global whole_inventory[-1].Slot
scoreboard players remove #slot_count loadout.settings 1
function lbp_ext:sort_offhand
