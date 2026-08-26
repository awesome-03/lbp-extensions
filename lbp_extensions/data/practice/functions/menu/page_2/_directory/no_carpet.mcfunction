scoreboard players set bool chest_menu 1

# Increment scores
execute if score selection chest_menu matches 1 if score items chest_menu matches 2 run scoreboard players add rerun_terrain settings 1
execute if score selection chest_menu matches 1 if score items chest_menu matches 1 run scoreboard players remove rerun_terrain settings 1
execute if score selection chest_menu matches 2 if score items chest_menu matches 2 run scoreboard players add hoglins bastion.settings 1
execute if score selection chest_menu matches 2 if score items chest_menu matches 1 run scoreboard players remove hoglins bastion.settings 1
execute if score selection chest_menu matches 3 if score items chest_menu matches 2 run scoreboard players add natural_mobs settings 1
execute if score selection chest_menu matches 3 if score items chest_menu matches 1 run scoreboard players remove natural_mobs settings 1
execute if score selection chest_menu matches 4 if score items chest_menu matches 2 run scoreboard players add practice_floor settings 1
execute if score selection chest_menu matches 4 if score items chest_menu matches 1 run scoreboard players remove practice_floor settings 1
execute if score selection chest_menu matches 5 unless score bastion settings matches 5 run scoreboard players set prev_settings_page chest_menu 2
execute if score selection chest_menu matches 5 unless score bastion settings matches 5 run scoreboard players set page chest_menu 3
execute if score selection chest_menu matches 6 run scoreboard players set page chest_menu 1

execute if score selection chest_menu matches 7 if score items chest_menu matches 2 run scoreboard players add guarantee_loot bastion.settings 1
execute if score selection chest_menu matches 7 if score items chest_menu matches 1 run scoreboard players remove guarantee_loot bastion.settings 1

# Reset clipping scores
execute if score rerun_terrain settings matches 2.. run scoreboard players set rerun_terrain settings 0
execute if score rerun_terrain settings matches ..-1 run scoreboard players set rerun_terrain settings 1
execute if score hoglins bastion.settings matches 2.. run scoreboard players set hoglins bastion.settings 0
execute if score hoglins bastion.settings matches ..-1 run scoreboard players set hoglins bastion.settings 1
execute if score natural_mobs settings matches 2.. run scoreboard players set natural_mobs settings 0
execute if score natural_mobs settings matches ..-1 run scoreboard players set natural_mobs settings 1
execute if score practice_floor settings matches 2.. run scoreboard players set practice_floor settings 0
execute if score practice_floor settings matches ..-1 run scoreboard players set practice_floor settings 1
execute if score guarantee_loot bastion.settings matches 2.. run scoreboard players set guarantee_loot bastion.settings 0
execute if score guarantee_loot bastion.settings matches ..-1 run scoreboard players set guarantee_loot bastion.settings 1
