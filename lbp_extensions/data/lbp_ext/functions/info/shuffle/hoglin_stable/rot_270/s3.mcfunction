scoreboard players set #shuffled lbp_info 1
scoreboard players operation #to lbp_info = #slot3 lbp_info
scoreboard players operation #to lbp_info += #dir lbp_info
execute if score #to lbp_info matches 3.. run scoreboard players set #to lbp_info 0
execute if score #to lbp_info matches ..-1 run scoreboard players set #to lbp_info 2
execute if score #slot3 lbp_info matches 0.. run function lbp_ext:info/shuffle/hoglin_stable/rot_270/s3_set
execute if score #slot3 lbp_info matches 0 run title @s actionbar [{"text":"Left Rampart: ","color":"yellow"},{"text":"Triple Chest","color":"green"},{"text":" (1/3)","color":"gray"}]
execute if score #slot3 lbp_info matches 1 run title @s actionbar [{"text":"Left Rampart: ","color":"yellow"},{"text":"Lantern Chest","color":"green"},{"text":" (2/3)","color":"gray"}]
execute if score #slot3 lbp_info matches 2 run title @s actionbar [{"text":"Left Rampart: ","color":"yellow"},{"text":"Single Chest","color":"green"},{"text":" (3/3)","color":"gray"}]
