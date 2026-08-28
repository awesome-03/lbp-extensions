# PAGE 1: STANDARD SETTINGS

# Bastion: (0: Random, 1: Bridge, 2: Stables, 3: Treasure, 4: Housing)
# scoreboard players set bastion settings 3

# For Random Bastion: (0: Random, 1: Predefined, 2: Terrain)
# scoreboard players set spawnpoint_random settings 0
# For Bridge: (0: Random, 1: Terrain, 2: Chalice, 3: Lower Bridge, 4: Lower Back, 5: Back, 6: Left Rampart, 7: Right Rampart, 8: Top Left, 9: Top Right, 10: Left Wall)
# scoreboard players set spawnpoint_bridge settings 0
# For Stables: (0: Random, 1: Terrain, 2: Top Stables, 3: Bottom Stairs, 4: Middle Stairs, 5: Top Stairs, 6: Backside Middle, 7: Left Gap Bottom, 8: Right Gap, 9: Left Rampart, 10: Middle Rampart, 11: Right Rampart)
# scoreboard players set spawnpoint_stables settings 0
# For Treasure: (0: Random, 1: Terrain, 2: Lava Basin, 3: Ledge, 4: Top Lower, 5: Lower Treasure, 6: Left Rampart Top, 7: Right Rampart Top)
# scoreboard players set spawnpoint_treasure settings 3
# For Housing: (0: Random, 1: Terrain, 2: Bottom Stairs, 3: Middle Stairs, 4: Top Stairs, 5: Backside Main, 6: Backside Left, 7: Top, 8: Triple Chest, 9: Center Chest)
# scoreboard players set spawnpoint_units settings 0

# Spawnpoint Distance: (0: Random, 1: 0 Blocks, 2: 25 Blocks, 3: 50 Blocks, 4: 75 Blocks, 5: 100 Blocks)
# scoreboard players set spawnpoint_dist settings 3

# Terrain: (0: Enabled, 1: Disabled)
# scoreboard players set terrain settings 1

# Gold Block Chances: (0: Default, 1: High-Roll, 2: Always)
# scoreboard players set random_gold bastion.settings 0

# Piedar: (0: Disabled, 1: Spawner, 2: Fortress) Works when terrain enabled
# scoreboard players set piedar settings 0

# Piedar Distance: (0: 4 Chunks, 1: 8 Chunks, 2: 12 Chunks, 3: 16 Chunks)
# scoreboard players set piedar_dist settings 3


# PAGE 2: MORE SETTINGS

# Rerun Terrain: (0: Enabled, 1: Disabled) (Regenerates terrain around the bastion when rerunning)
# scoreboard players set rerun_terrain settings 0

# Hoglins: (0: Enabled, 1: Disabled) (Generates bastion hoglins)
# scoreboard players set hoglins bastion.settings 0

# Natural Mobs: (0: Enabled, 1: Disabled) (Allows non-bastion nether mobs to spawn naturally)
# scoreboard players set natural_mobs settings 1

# Floor Material: (0: Netherrack, 1: Lava) (The material of the floor below the bastion when terrain is disabled)
# scoreboard players set practice_floor settings 0

# Tick Warp: (0: 0m 0s, 1: 0m 30s, 2: 1m 0s, 3: 1m 30s, 4: 2m 0s)
# scoreboard players set tick_warp settings 0

# Ranked Loot Guaranteed: (0: Disabled, 1: Enabled) (Guarantees 5 obsidian and 3 iron in total across the bastion, nuggets count, never in bottom treasure)
# scoreboard players set guarantee_loot bastion.settings 0


# PAGE 3: STRUCTURE SPECIFIC SETTINGS

# For Bridge:
# Left Rampart: (0: Single Chest, 1: Triple Chest, -1: Random)
# scoreboard players set bridge_left_rampart bastion.settings -1
# Right Rampart: (0: Single Chest, 1: Triple Chest, -1: Random)
# scoreboard players set bridge_right_rampart bastion.settings -1
# Lava Fix: (0: Disabled, 1: Enabled) (Fills the lava lake around bridge blocks to prevent path issues)
# scoreboard players set bridge_lava_fix bastion.settings 0

# For Stables:
# Left Gap: (0: Bad Gap, 1: Good Gap, -1: Random)
# scoreboard players set stables_left_gap bastion.settings -1
# Right Gap: (0: Bad Gap, 1: Good Gap, -1: Random)
# scoreboard players set stables_right_gap bastion.settings -1
# Left Rampart: (0: Triple Chest, 1: Lantern Chest, 2: Single Chest, -1: Random)
# scoreboard players set stables_left_rampart bastion.settings -1
# Middle Rampart: (0: Triple Chest, 1: Lantern Chest, 2: Single Chest, -1: Random)
# scoreboard players set stables_middle_rampart bastion.settings -1
# Right Rampart: (0: Triple Chest, 1: Lantern Chest, 2: Single Chest, -1: Random)
# scoreboard players set stables_right_rampart bastion.settings -1

# For Treasure:
# Center Treasure: (0: Hashtag, 1: Double Chest, 2: Cage, 3: 1812, -1: Random)
# scoreboard players set treasure_center bastion.settings -1
# Center Wall: (0: BasaltE, 1: Throne, 2: Lava, -1: Random)
# scoreboard players set treasure_wall bastion.settings -1
# Spawner: (0: Disabled, 1: Enabled)
# scoreboard players set treasure_spawner bastion.settings 1

# For Housing:
# Left Rampart: (0: Triple Chest, 1: Single Chest, 2: Ruin, -1: Random)
# scoreboard players set units_left_rampart bastion.settings -1
# Lava Housing: (0: All, 1: Source, 2: Disabled)
# scoreboard players set units_lava settings 2


# PAGE 4: ADVANCED SETTINGS

# Bastion Mobs: (0: Disabled, 1: Enabled) (Generates piglins within the bastion)
# scoreboard players set bastion_mobs bastion.settings 1

# Bastion Rotation: (0: Random, 1: 0 Degrees, 2: 90 Degrees, 3: 180 Degrees, 4: 270 Degrees)
# scoreboard players set bastion_rotation practice 0

# User Interface: (0: Disabled, 1: Enabled) (Toggles the sidebar)
# scoreboard players set ui practice 1

# Logger: (0: Disabled, 1: Enabled) (Logs important run events to chat with a timestamp)
# scoreboard players set logger practice 0

# ID Piglins: (0: Disabled, 1: Enabled) (Tags piglins with their parent structure name)
# scoreboard players set id_piglins bastion.settings 1

# Reset Saturation: (0: Disabled, 1: Enabled)
# scoreboard players set sat_reset practice 1
