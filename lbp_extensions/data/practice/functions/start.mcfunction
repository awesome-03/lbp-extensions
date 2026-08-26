# Reset save-state flag on start of a new practice session
scoreboard players set #has_state_inventory practice 0

difficulty easy

function practice:_start/silent_gamemode/adventure

team join no_collison @a

effect give @a fire_resistance 1000000 0 true

execute as @a run attribute @s generic.knockback_resistance base set 1

execute as @a run function loadout:apply

title @a title ""

function practice:soft_reset

scoreboard players reset @a damage_taken
scoreboard players set Damage practice.info 0

# Save the current loadout if it is unsaved
execute if score editing_loadout practice matches 1 run function practice:signs/loadout_sign/save

# If terrain is enabled, teleport to a random location in the world
execute if score terrain settings matches 0 run function practice:_start/find_valid_location
execute if score terrain settings matches 1 run tp @s 0 512 0

# Create a chunk-aligned marker to generate the bastion
execute if score terrain settings matches 0 at @s positioned ~ 32 ~ run function practice:_start/create_aligned_marker
execute if score terrain settings matches 1 at @s positioned 0 128 0 run function practice:_start/create_aligned_marker

function practice:_start/wait_for_marker

scoreboard players set running bastion.temp 1

advancement revoke @s only practice:start_button
