# Reset state_loadout:data sections:
data remove storage state_loadout:data armor
data remove storage state_loadout:data hotbar
data remove storage state_loadout:data inventory
data remove storage state_loadout:data offhand

# Copy whole inventory data from player:
data modify storage loadout.global whole_inventory set from entity @s Inventory

# Get slot number and item count:
execute store result score #slot loadout.settings run data get storage loadout.global whole_inventory[-1].Slot
execute store result score #slot_count loadout.settings run data get storage loadout.global whole_inventory

# Run LBP3 sorting sequence:
function lbp_ext:sort_offhand
