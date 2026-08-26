scoreboard objectives add settings dummy
execute unless score bastion settings = bastion settings run scoreboard players set bastion settings 0
execute unless score terrain settings = terrain settings run scoreboard players set terrain settings 0
execute unless score natural_mobs settings = natural_mobs settings run scoreboard players set natural_mobs settings 1
execute unless score piedar settings = piedar settings run scoreboard players set piedar settings 0
execute unless score rerun_terrain settings = rerun_terrain settings run scoreboard players set rerun_terrain settings 0
execute unless score spawnpoint_bridge settings = spawnpoint_bridge settings run scoreboard players set spawnpoint_bridge settings 0
execute unless score spawnpoint_stables settings = spawnpoint_stables settings run scoreboard players set spawnpoint_stables settings 0
execute unless score prev_settings_page chest_menu = prev_settings_page chest_menu run scoreboard players set prev_settings_page chest_menu 1
execute unless score spawnpoint_treasure settings = spawnpoint_treasure settings run scoreboard players set spawnpoint_treasure settings 0
execute unless score spawnpoint_units settings = spawnpoint_units settings run scoreboard players set spawnpoint_units settings 0
execute unless score spawnpoint_random settings = spawnpoint_random settings run scoreboard players set spawnpoint_random settings 0
execute unless score spawnpoint_custom settings = spawnpoint_custom settings run scoreboard players set spawnpoint_custom settings 1
execute unless score tick_warp settings = tick_warp settings run scoreboard players set tick_warp settings 0
execute unless score spawnpoint_dist settings = spawnpoint_dist settings run scoreboard players set spawnpoint_dist settings 0
execute unless score practice_floor settings = practice_floor settings run scoreboard players set practice_floor settings 0
execute unless score units_lava_menu settings = units_lava_menu settings run scoreboard players set units_lava_menu settings 0
execute if score units_lava_menu settings matches 0 run scoreboard players set units_lava settings 2
execute if score units_lava_menu settings matches 1 run scoreboard players set units_lava settings 1
execute if score units_lava_menu settings matches 2 run scoreboard players set units_lava settings 0

scoreboard objectives add practice dummy
execute unless score has_carpet practice = has_carpet practice run scoreboard players set has_carpet practice 0
execute store success score has_carpet practice run function practice:check_for_carpet

scoreboard objectives add dropped_dia_pick minecraft.dropped:minecraft.diamond_pickaxe
scoreboard objectives add dropped_iro_pick minecraft.dropped:minecraft.iron_pickaxe
scoreboard objectives add dropped_gol_pick minecraft.dropped:minecraft.golden_pickaxe
scoreboard objectives add dropped_sto_pick minecraft.dropped:minecraft.stone_pickaxe
scoreboard objectives add dropped_woo_pick minecraft.dropped:minecraft.wooden_pickaxe
scoreboard objectives add dropped_net_pick minecraft.dropped:minecraft.netherite_pickaxe
scoreboard objectives add deaths deathCount

scoreboard objectives add playerpos dummy
scoreboard objectives add jumps minecraft.custom:jump

# Instantiate current run info scores
scoreboard objectives add practice.info dummy "\u00A7bRun Info"
execute unless score #gold practice.info = #gold practice.info run scoreboard players set #gold practice.info 0
execute unless score Barters practice.info = Barters practice.info run scoreboard players set Barters practice.info 0
execute unless score Piglins practice.info = Piglins practice.info run scoreboard players set Piglins practice.info 0
scoreboard players set #10 practice.info 10
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives remove current_barter
scoreboard objectives add current_barter dummy

# Create scoreboards for run info
scoreboard objectives add practice.gold dummy
scoreboard objectives add practice.barters dummy
scoreboard objectives add practice.piglins dummy

# Create hub if it doesn't exist
execute in the_nether run forceload remove all
execute in the_nether run forceload add 100 0
function practice:_init/create_nether_hub

# Set the players spawnpoint to the hub
function practice:_init/set_player_spawnpoint

# Teleport the player to the hub
function practice:_init/fully_reset_player

# Teams
team add no_collison
team modify no_collison collisionRule never
team empty no_collison

# Saturation reset mode
execute unless score sat_reset practice = sat_reset practice run scoreboard players set sat_reset practice 5

# Enable keepInventory
gamerule keepInventory true

# Bastion rotation mode
execute unless score bastion_rotation practice = bastion_rotation practice run scoreboard players set bastion_rotation practice 0

# Unschedule reset check for warping
schedule clear practice:_start/wait_for_movement/_warp/reset_check

# Piedar distance option
execute unless score piedar_dist settings = piedar_dist settings run scoreboard players set piedar_dist settings 3

# Logger
execute unless score logger practice = logger practice run scoreboard players set logger practice 0
scoreboard objectives add open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add gold_mined minecraft.mined:minecraft.gold_block

# User interface
execute unless score ui practice = ui practice run scoreboard players set ui practice 1

# ID piglins
execute unless score id_piglins bastion.settings = id_piglins bastion.settings run scoreboard players set id_piglins bastion.settings 0

# Ranked loot
execute unless score guarantee_loot bastion.settings = guarantee_loot bastion.settings run scoreboard players set guarantee_loot bastion.settings 1

scoreboard players set running bastion.temp 0

# Initialize Custom Spawnpoint Pool scores
execute unless score spawnpoint_bridge_c_chalice settings = spawnpoint_bridge_c_chalice settings run scoreboard players set spawnpoint_bridge_c_chalice settings 0
execute unless score spawnpoint_bridge_c_lower_bridge settings = spawnpoint_bridge_c_lower_bridge settings run scoreboard players set spawnpoint_bridge_c_lower_bridge settings 0
execute unless score spawnpoint_bridge_c_lower_back settings = spawnpoint_bridge_c_lower_back settings run scoreboard players set spawnpoint_bridge_c_lower_back settings 0
execute unless score spawnpoint_bridge_c_back settings = spawnpoint_bridge_c_back settings run scoreboard players set spawnpoint_bridge_c_back settings 0
execute unless score spawnpoint_bridge_c_left_rampart settings = spawnpoint_bridge_c_left_rampart settings run scoreboard players set spawnpoint_bridge_c_left_rampart settings 0
execute unless score spawnpoint_bridge_c_right_rampart settings = spawnpoint_bridge_c_right_rampart settings run scoreboard players set spawnpoint_bridge_c_right_rampart settings 0
execute unless score spawnpoint_bridge_c_top_left settings = spawnpoint_bridge_c_top_left settings run scoreboard players set spawnpoint_bridge_c_top_left settings 0
execute unless score spawnpoint_bridge_c_top_right settings = spawnpoint_bridge_c_top_right settings run scoreboard players set spawnpoint_bridge_c_top_right settings 0
execute unless score spawnpoint_bridge_c_left_wall settings = spawnpoint_bridge_c_left_wall settings run scoreboard players set spawnpoint_bridge_c_left_wall settings 0
execute unless score spawnpoint_stables_c_top_stables settings = spawnpoint_stables_c_top_stables settings run scoreboard players set spawnpoint_stables_c_top_stables settings 0
execute unless score spawnpoint_stables_c_bottom_stairs settings = spawnpoint_stables_c_bottom_stairs settings run scoreboard players set spawnpoint_stables_c_bottom_stairs settings 0
execute unless score spawnpoint_stables_c_middle_stairs settings = spawnpoint_stables_c_middle_stairs settings run scoreboard players set spawnpoint_stables_c_middle_stairs settings 0
execute unless score spawnpoint_stables_c_top_stairs settings = spawnpoint_stables_c_top_stairs settings run scoreboard players set spawnpoint_stables_c_top_stairs settings 0
execute unless score spawnpoint_stables_c_backside_middle settings = spawnpoint_stables_c_backside_middle settings run scoreboard players set spawnpoint_stables_c_backside_middle settings 0
execute unless score spawnpoint_stables_c_left_gap_bottom settings = spawnpoint_stables_c_left_gap_bottom settings run scoreboard players set spawnpoint_stables_c_left_gap_bottom settings 0
execute unless score spawnpoint_stables_c_right_gap settings = spawnpoint_stables_c_right_gap settings run scoreboard players set spawnpoint_stables_c_right_gap settings 0
execute unless score spawnpoint_stables_c_left_rampart settings = spawnpoint_stables_c_left_rampart settings run scoreboard players set spawnpoint_stables_c_left_rampart settings 0
execute unless score spawnpoint_stables_c_middle_rampart settings = spawnpoint_stables_c_middle_rampart settings run scoreboard players set spawnpoint_stables_c_middle_rampart settings 0
execute unless score spawnpoint_stables_c_right_rampart settings = spawnpoint_stables_c_right_rampart settings run scoreboard players set spawnpoint_stables_c_right_rampart settings 0
execute unless score spawnpoint_treasure_c_lava_basin settings = spawnpoint_treasure_c_lava_basin settings run scoreboard players set spawnpoint_treasure_c_lava_basin settings 0
execute unless score spawnpoint_treasure_c_ledge settings = spawnpoint_treasure_c_ledge settings run scoreboard players set spawnpoint_treasure_c_ledge settings 0
execute unless score spawnpoint_treasure_c_top_lower settings = spawnpoint_treasure_c_top_lower settings run scoreboard players set spawnpoint_treasure_c_top_lower settings 0
execute unless score spawnpoint_treasure_c_lower_treasure settings = spawnpoint_treasure_c_lower_treasure settings run scoreboard players set spawnpoint_treasure_c_lower_treasure settings 0
execute unless score spawnpoint_treasure_c_left_rampart_top settings = spawnpoint_treasure_c_left_rampart_top settings run scoreboard players set spawnpoint_treasure_c_left_rampart_top settings 0
execute unless score spawnpoint_treasure_c_right_rampart_top settings = spawnpoint_treasure_c_right_rampart_top settings run scoreboard players set spawnpoint_treasure_c_right_rampart_top settings 0
execute unless score spawnpoint_units_c_bottom_stairs settings = spawnpoint_units_c_bottom_stairs settings run scoreboard players set spawnpoint_units_c_bottom_stairs settings 0
execute unless score spawnpoint_units_c_middle_stairs settings = spawnpoint_units_c_middle_stairs settings run scoreboard players set spawnpoint_units_c_middle_stairs settings 0
execute unless score spawnpoint_units_c_top_stairs settings = spawnpoint_units_c_top_stairs settings run scoreboard players set spawnpoint_units_c_top_stairs settings 0
execute unless score spawnpoint_units_c_backside_main settings = spawnpoint_units_c_backside_main settings run scoreboard players set spawnpoint_units_c_backside_main settings 0
execute unless score spawnpoint_units_c_backside_left settings = spawnpoint_units_c_backside_left settings run scoreboard players set spawnpoint_units_c_backside_left settings 0
execute unless score spawnpoint_units_c_top settings = spawnpoint_units_c_top settings run scoreboard players set spawnpoint_units_c_top settings 0
execute unless score spawnpoint_units_c_triple_chest settings = spawnpoint_units_c_triple_chest settings run scoreboard players set spawnpoint_units_c_triple_chest settings 0
execute unless score spawnpoint_units_c_center_chest settings = spawnpoint_units_c_center_chest settings run scoreboard players set spawnpoint_units_c_center_chest settings 0
execute unless score treasure_center_c_hashtag bastion.settings = treasure_center_c_hashtag bastion.settings run scoreboard players set treasure_center_c_hashtag bastion.settings 0
execute unless score treasure_center_c_double bastion.settings = treasure_center_c_double bastion.settings run scoreboard players set treasure_center_c_double bastion.settings 0
execute unless score treasure_center_c_cage bastion.settings = treasure_center_c_cage bastion.settings run scoreboard players set treasure_center_c_cage bastion.settings 0
execute unless score treasure_center_c_1812 bastion.settings = treasure_center_c_1812 bastion.settings run scoreboard players set treasure_center_c_1812 bastion.settings 0
execute unless score treasure_wall_c_basalte bastion.settings = treasure_wall_c_basalte bastion.settings run scoreboard players set treasure_wall_c_basalte bastion.settings 0
execute unless score treasure_wall_c_throne bastion.settings = treasure_wall_c_throne bastion.settings run scoreboard players set treasure_wall_c_throne bastion.settings 0
execute unless score treasure_wall_c_lava bastion.settings = treasure_wall_c_lava bastion.settings run scoreboard players set treasure_wall_c_lava bastion.settings 0
execute unless score units_left_rampart_c_triple bastion.settings = units_left_rampart_c_triple bastion.settings run scoreboard players set units_left_rampart_c_triple bastion.settings 0
execute unless score units_left_rampart_c_single bastion.settings = units_left_rampart_c_single bastion.settings run scoreboard players set units_left_rampart_c_single bastion.settings 0
execute unless score units_left_rampart_c_ruin bastion.settings = units_left_rampart_c_ruin bastion.settings run scoreboard players set units_left_rampart_c_ruin bastion.settings 0
execute unless score stables_left_rampart_c_triple bastion.settings = stables_left_rampart_c_triple bastion.settings run scoreboard players set stables_left_rampart_c_triple bastion.settings 0
execute unless score stables_left_rampart_c_lantern bastion.settings = stables_left_rampart_c_lantern bastion.settings run scoreboard players set stables_left_rampart_c_lantern bastion.settings 0
execute unless score stables_left_rampart_c_single bastion.settings = stables_left_rampart_c_single bastion.settings run scoreboard players set stables_left_rampart_c_single bastion.settings 0
execute unless score stables_middle_rampart_c_triple bastion.settings = stables_middle_rampart_c_triple bastion.settings run scoreboard players set stables_middle_rampart_c_triple bastion.settings 0
execute unless score stables_middle_rampart_c_lantern bastion.settings = stables_middle_rampart_c_lantern bastion.settings run scoreboard players set stables_middle_rampart_c_lantern bastion.settings 0
execute unless score stables_middle_rampart_c_single bastion.settings = stables_middle_rampart_c_single bastion.settings run scoreboard players set stables_middle_rampart_c_single bastion.settings 0
execute unless score stables_right_rampart_c_triple bastion.settings = stables_right_rampart_c_triple bastion.settings run scoreboard players set stables_right_rampart_c_triple bastion.settings 0
execute unless score stables_right_rampart_c_lantern bastion.settings = stables_right_rampart_c_lantern bastion.settings run scoreboard players set stables_right_rampart_c_lantern bastion.settings 0
execute unless score stables_right_rampart_c_single bastion.settings = stables_right_rampart_c_single bastion.settings run scoreboard players set stables_right_rampart_c_single bastion.settings 0
execute unless score spawnpoint_dist_c_0 settings = spawnpoint_dist_c_0 settings run scoreboard players set spawnpoint_dist_c_0 settings 0
execute unless score spawnpoint_dist_c_25 settings = spawnpoint_dist_c_25 settings run scoreboard players set spawnpoint_dist_c_25 settings 0
execute unless score spawnpoint_dist_c_50 settings = spawnpoint_dist_c_50 settings run scoreboard players set spawnpoint_dist_c_50 settings 0
execute unless score spawnpoint_dist_c_75 settings = spawnpoint_dist_c_75 settings run scoreboard players set spawnpoint_dist_c_75 settings 0
execute unless score spawnpoint_dist_c_100 settings = spawnpoint_dist_c_100 settings run scoreboard players set spawnpoint_dist_c_100 settings 0
execute unless score bastion_rot_c_0 practice = bastion_rot_c_0 practice run scoreboard players set bastion_rot_c_0 practice 0
execute unless score bastion_rot_c_90 practice = bastion_rot_c_90 practice run scoreboard players set bastion_rot_c_90 practice 0
execute unless score bastion_rot_c_180 practice = bastion_rot_c_180 practice run scoreboard players set bastion_rot_c_180 practice 0
execute unless score bastion_rot_c_270 practice = bastion_rot_c_270 practice run scoreboard players set bastion_rot_c_270 practice 0
execute unless score #reverse_pick_throw practice = #reverse_pick_throw practice run scoreboard players set #reverse_pick_throw practice 0

