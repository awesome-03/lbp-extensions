scoreboard players set bool chest_menu 1

# Increment scores
execute if score selection chest_menu matches 1 if score items chest_menu matches 2 run scoreboard players add bastion_mobs bastion.settings 1
execute if score selection chest_menu matches 1 if score items chest_menu matches 1 run scoreboard players remove bastion_mobs bastion.settings 1
# Shift-click handling for Bastion Rotation (immediately sets to Custom and opens Page 16)
execute if score selection chest_menu matches 2 if score is_shift_click chest_menu matches 1 run scoreboard players set bastion_rotation practice 5
execute if score selection chest_menu matches 2 if score is_shift_click chest_menu matches 1 run scoreboard players set prev_page chest_menu 4
execute if score selection chest_menu matches 2 if score is_shift_click chest_menu matches 1 run scoreboard players set page chest_menu 16
execute if score selection chest_menu matches 2 if score is_shift_click chest_menu matches 1 at @s run playsound ui.button.click master @s ~ ~ ~ 0.3 1
execute if score selection chest_menu matches 2 if score is_shift_click chest_menu matches 1 run scoreboard players set selection chest_menu 0

execute if score selection chest_menu matches 2 if score items chest_menu matches 2 run scoreboard players add bastion_rotation practice 1
execute if score selection chest_menu matches 2 if score items chest_menu matches 1 run scoreboard players remove bastion_rotation practice 1
execute if score selection chest_menu matches 3 if score items chest_menu matches 2 run scoreboard players add ui practice 1
execute if score selection chest_menu matches 3 if score items chest_menu matches 1 run scoreboard players remove ui practice 1
execute if score selection chest_menu matches 4 if score items chest_menu matches 2 run scoreboard players add logger practice 1
execute if score selection chest_menu matches 4 if score items chest_menu matches 1 run scoreboard players remove logger practice 1
execute if score selection chest_menu matches 5 if score items chest_menu matches 2 run scoreboard players add id_piglins bastion.settings 1
execute if score selection chest_menu matches 5 if score items chest_menu matches 1 run scoreboard players remove id_piglins bastion.settings 1
execute if score selection chest_menu matches 8 if score items chest_menu matches 2 run scoreboard players add #reverse_pick_throw practice 1
execute if score selection chest_menu matches 8 if score items chest_menu matches 1 run scoreboard players remove #reverse_pick_throw practice 1
execute if score selection chest_menu matches 6 unless score bastion settings matches 5 run scoreboard players set prev_settings_page chest_menu 4
execute if score selection chest_menu matches 6 unless score bastion settings matches 5 run scoreboard players set page chest_menu 3
execute if score selection chest_menu matches 7 run scoreboard players set page chest_menu 1

# Reset clipping scores
execute if score bastion_mobs bastion.settings matches 2.. run scoreboard players set bastion_mobs bastion.settings 0
execute if score bastion_mobs bastion.settings matches ..-1 run scoreboard players set bastion_mobs bastion.settings 1
execute if score bastion_rotation practice matches 6.. run scoreboard players set bastion_rotation practice 0
execute if score bastion_rotation practice matches ..-1 run scoreboard players set bastion_rotation practice 5
execute if score ui practice matches 2.. run scoreboard players set ui practice 0
execute if score ui practice matches ..-1 run scoreboard players set ui practice 1
execute if score logger practice matches 2.. run scoreboard players set logger practice 0
execute if score logger practice matches ..-1 run scoreboard players set logger practice 1
execute if score id_piglins bastion.settings matches 2.. run scoreboard players set id_piglins bastion.settings 0
execute if score id_piglins bastion.settings matches ..-1 run scoreboard players set id_piglins bastion.settings 1
execute if score #reverse_pick_throw practice matches 3.. run scoreboard players set #reverse_pick_throw practice 0
execute if score #reverse_pick_throw practice matches ..-1 run scoreboard players set #reverse_pick_throw practice 2
