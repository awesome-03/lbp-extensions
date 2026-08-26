# Remove all forceloaded chunks
execute in the_nether run forceload remove all

# Load the chunks around the chunk-aligned AEC
forceload add ~-80 ~-80 ~80 ~80

# If terrain is disabled, clear the last generated bastion at [0, 0]
execute if score terrain settings matches 1 positioned 0 128 0 run function practice:_start/terrain/clear_bastion

# Get the bastion type
execute if score bastion settings matches 0 run scoreboard players set max bastion.rng 4
execute if score bastion settings matches 0 run function bastionbuilder:internal/utils/rng/new_int
execute if score bastion settings matches 0 run scoreboard players operation bastion_type bastion.temp = out bastion.rng
execute if score bastion settings matches 1..4 run scoreboard players operation bastion_type bastion.temp = bastion settings
execute if score bastion settings matches 5 run function practice:_start/custom_pools_override


# Get the bastion rotation
function practice:_start/get_rotation

# Set chunk-aligned marker to have same rotation as bastion to allow for local coord usage
function practice:_start/set_chunk_aligned_rotation

# If terrain is disabled, generate the floor for the bastion
execute if score terrain settings matches 1 positioned 0 127 0 run function practice:_start/terrain/place_floor

# Remove lava from the terrain
execute if score terrain settings matches 0 run function practice:_start/terrain/remove_lava

# If rerun terrain is disabled, save the terrain for later use
execute if score rerun_terrain settings matches 1 run function practice:_start/terrain/save

# Generate the bastion
execute if score units_left_rampart bastion.settings matches 3 run function practice:_start/units_left_rampart_override
execute if score treasure_center bastion.settings matches 4 run function practice:_start/treasure_center_override
execute if score treasure_wall bastion.settings matches 3 run function practice:_start/treasure_wall_override
execute if score stables_left_rampart bastion.settings matches 3 run function practice:_start/stables_left_rampart_override
execute if score stables_middle_rampart bastion.settings matches 3 run function practice:_start/stables_middle_rampart_override
execute if score stables_right_rampart bastion.settings matches 3 run function practice:_start/stables_right_rampart_override
execute if score stables_guarantee_good_gap bastion.settings matches 0 run function practice:_start/stables_gap_override
execute if score stables_guarantee_triple bastion.settings matches 1 run function practice:_start/stables_rampart_override
execute if score bridge_guarantee_triple bastion.settings matches 1 run function practice:_start/bridge_override

execute if score terrain settings matches 0 positioned ~ 32 ~ run function bastionbuilder:generate
execute if score terrain settings matches 1 positioned 0 128 0 run function bastionbuilder:generate

execute if score stables_guarantee_good_gap bastion.settings matches 0 run function practice:_start/stables_gap_restore
execute if score stables_guarantee_triple bastion.settings matches 1 run function practice:_start/stables_rampart_restore
execute if score bridge_guarantee_triple bastion.settings matches 1 run function practice:_start/bridge_restore
execute if score orig_treasure_center bastion.temp matches 0..4 run scoreboard players operation treasure_center bastion.settings = orig_treasure_center bastion.temp
execute if score orig_treasure_center bastion.temp matches 0..4 run scoreboard players reset orig_treasure_center bastion.temp
execute if score orig_treasure_wall bastion.temp matches 0..3 run scoreboard players operation treasure_wall bastion.settings = orig_treasure_wall bastion.temp
execute if score orig_treasure_wall bastion.temp matches 0..3 run scoreboard players reset orig_treasure_wall bastion.temp
execute if score orig_left_rampart bastion.temp matches 0..3 run scoreboard players operation units_left_rampart bastion.settings = orig_left_rampart bastion.temp
execute if score orig_left_rampart bastion.temp matches 0..3 run scoreboard players reset orig_left_rampart bastion.temp
execute if score orig_c_stables_left_rampart bastion.temp matches 0..3 run scoreboard players operation stables_left_rampart bastion.settings = orig_c_stables_left_rampart bastion.temp
execute if score orig_c_stables_left_rampart bastion.temp matches 0..3 run scoreboard players operation s_s_left_rampart bastion.temp = orig_c_stables_left_rampart bastion.temp
execute if score orig_c_stables_left_rampart bastion.temp matches 0..3 run scoreboard players reset orig_c_stables_left_rampart bastion.temp
execute if score orig_c_stables_middle_rampart bastion.temp matches 0..3 run scoreboard players operation stables_middle_rampart bastion.settings = orig_c_stables_middle_rampart bastion.temp
execute if score orig_c_stables_middle_rampart bastion.temp matches 0..3 run scoreboard players operation s_s_middle_rampart bastion.temp = orig_c_stables_middle_rampart bastion.temp
execute if score orig_c_stables_middle_rampart bastion.temp matches 0..3 run scoreboard players reset orig_c_stables_middle_rampart bastion.temp
execute if score orig_c_stables_right_rampart bastion.temp matches 0..3 run scoreboard players operation stables_right_rampart bastion.settings = orig_c_stables_right_rampart bastion.temp
execute if score orig_c_stables_right_rampart bastion.temp matches 0..3 run scoreboard players operation s_s_right_rampart bastion.temp = orig_c_stables_right_rampart bastion.temp
execute if score orig_c_stables_right_rampart bastion.temp matches 0..3 run scoreboard players reset orig_c_stables_right_rampart bastion.temp






# If terrain is disabled, save the current no-terrain bastion info
execute if score terrain settings matches 1 run scoreboard players operation cur_bastion_no_t practice = bastion_type bastion.temp
execute if score terrain settings matches 1 run scoreboard players operation cur_rotation_no_t practice = bastion_rotation bastion.temp

# Check if the chunk_aligned marker is at a block center (.5) or block corner (.0)
execute as @e[tag=chunk_aligned, limit=1] store result score #is_centered practice run data get entity @s Pos[0] 2
scoreboard players set #two practice 2
scoreboard players operation #is_centered practice %= #two practice

# Place spawnpoint AEC's
# If marker is centered (willbe fork, coordinate ends in .5, result of % 2 is odd):
execute unless score #is_centered practice matches 0 run execute positioned ~ ~0.5 ~ run function practice:_start/place_spawnpoints
# If marker is not centered (normal LBP, coordinate ends in .0, result of % 2 is 0):
execute if score #is_centered practice matches 0 run execute positioned ~0.5 ~0.5 ~0.5 run function practice:_start/place_spawnpoints

# If lava flooding is enabled, place lava in the bastion
execute if score units_lava settings matches 0..1 run function practice:_start/terrain/flood_bastion

# Teleport to the selected spawnpoint AEC
execute as @a at @s run function practice:_start/teleport_to_spawnpoint

# If terrain is enabled and piedar is enabled, place the piedar structure
execute if score terrain settings matches 0 if score piedar settings matches 1.. run function practice:piedar/place

# If rerun terrain is enabled, save the bastion and current terrain for later use
execute if score rerun_terrain settings matches 0 as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~100 ~
execute if score rerun_terrain settings matches 0 run function practice:_start/terrain/save
execute if score rerun_terrain settings matches 0 as @e[type=area_effect_cloud, tag=!hub_entity, tag=!bastion_chest] at @s run tp ~ ~-100 ~

# Reroll chests for ranked loot if the option is enabled
execute if score guarantee_loot bastion.settings matches 1 run function lbp_ext:guarantee_loot/run

# Reset movement detection
execute as @a run function practice:_start/movement_detection/set_home
scoreboard players reset @a jumps

# ID piglins if the option is enabled
execute if score id_piglins bastion.settings matches 1.. run function practice:_start/id_piglins

execute if score has_carpet practice matches 0 run function practice:_start/wait_for_movement/standard
execute if score has_carpet practice matches 1 run function practice:_start/wait_for_movement/warp