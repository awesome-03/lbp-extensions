# Shift-click handling for Center Treasure (immediately sets to Custom and opens Page 18)
execute if score selection chest_menu matches 1 if score is_shift_click chest_menu matches 1 run scoreboard players set treasure_center bastion.settings 4
execute if score selection chest_menu matches 1 if score is_shift_click chest_menu matches 1 run scoreboard players set prev_page chest_menu 3
execute if score selection chest_menu matches 1 if score is_shift_click chest_menu matches 1 run scoreboard players set page chest_menu 18
execute if score selection chest_menu matches 1 if score is_shift_click chest_menu matches 1 at @s run playsound ui.button.click master @s ~ ~ ~ 0.3 1
execute if score selection chest_menu matches 1 if score is_shift_click chest_menu matches 1 run scoreboard players set selection chest_menu 0
execute if score selection chest_menu matches 1 if score items chest_menu matches 2 run scoreboard players add treasure_center bastion.settings 1
execute if score selection chest_menu matches 1 if score items chest_menu matches 1 run scoreboard players remove treasure_center bastion.settings 1
execute if score selection chest_menu matches 2 if score items chest_menu matches 2 run scoreboard players add treasure_spawner bastion.settings 1
execute if score selection chest_menu matches 2 if score items chest_menu matches 1 run scoreboard players remove treasure_spawner bastion.settings 1
# Shift-click handling for Center Wall (immediately sets to Custom and opens Page 19)
execute if score selection chest_menu matches 3 if score is_shift_click chest_menu matches 1 run scoreboard players set treasure_wall bastion.settings 3
execute if score selection chest_menu matches 3 if score is_shift_click chest_menu matches 1 run scoreboard players set prev_page chest_menu 3
execute if score selection chest_menu matches 3 if score is_shift_click chest_menu matches 1 run scoreboard players set page chest_menu 19
execute if score selection chest_menu matches 3 if score is_shift_click chest_menu matches 1 at @s run playsound ui.button.click master @s ~ ~ ~ 0.3 1
execute if score selection chest_menu matches 3 if score is_shift_click chest_menu matches 1 run scoreboard players set selection chest_menu 0
execute if score selection chest_menu matches 3 if score items chest_menu matches 2 run scoreboard players add treasure_wall bastion.settings 1
execute if score selection chest_menu matches 3 if score items chest_menu matches 1 run scoreboard players remove treasure_wall bastion.settings 1
execute if score selection chest_menu matches 4 if score items chest_menu matches 2 run scoreboard players add treasure_decay bastion.settings 1
execute if score selection chest_menu matches 4 if score items chest_menu matches 1 run scoreboard players remove treasure_decay bastion.settings 1

execute if score treasure_center bastion.settings matches 5.. run scoreboard players set treasure_center bastion.settings -1
execute if score treasure_center bastion.settings matches ..-2 run scoreboard players set treasure_center bastion.settings 4
execute if score treasure_spawner bastion.settings matches 2.. run scoreboard players set treasure_spawner bastion.settings 0
execute if score treasure_spawner bastion.settings matches ..-1 run scoreboard players set treasure_spawner bastion.settings 1
execute if score treasure_wall bastion.settings matches 4.. run scoreboard players set treasure_wall bastion.settings -1
execute if score treasure_wall bastion.settings matches ..-2 run scoreboard players set treasure_wall bastion.settings 3
execute if score treasure_decay bastion.settings matches 2.. run scoreboard players set treasure_decay bastion.settings -1
execute if score treasure_decay bastion.settings matches ..-2 run scoreboard players set treasure_decay bastion.settings 1
