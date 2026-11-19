scoreboard players set #shuffled lbp_info 1
scoreboard players operation #to lbp_info = #slot8 lbp_info
scoreboard players operation #to lbp_info += #dir lbp_info
execute if score #to lbp_info matches 2.. run scoreboard players set #to lbp_info 0
execute if score #to lbp_info matches ..-1 run scoreboard players set #to lbp_info 1
execute if score #slot8 lbp_info matches 0.. run function lbp_ext:info/shuffle/bridge/rot_270/s8_set
execute if score #slot8 lbp_info matches 0 run title @s actionbar [{"text":"Right Rampart: ","color":"yellow"},{"text":"Single Chest","color":"green"},{"text":" (1/2)","color":"gray"}]
execute if score #slot8 lbp_info matches 1 run title @s actionbar [{"text":"Right Rampart: ","color":"yellow"},{"text":"Triple Chest","color":"green"},{"text":" (2/2)","color":"gray"}]
