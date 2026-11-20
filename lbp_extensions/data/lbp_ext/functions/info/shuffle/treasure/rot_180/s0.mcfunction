scoreboard players set #shuffled lbp_info 1
scoreboard players operation #to lbp_info = #slot0 lbp_info
scoreboard players operation #to lbp_info += #dir lbp_info
execute if score #to lbp_info matches 4.. run scoreboard players set #to lbp_info 0
execute if score #to lbp_info matches ..-1 run scoreboard players set #to lbp_info 3
execute if score #slot0 lbp_info matches 0.. run function lbp_ext:info/shuffle/treasure/rot_180/s0_set
execute if score #slot0 lbp_info matches 0 run title @s actionbar [{"text":"Center: ","color":"yellow"},{"text":"Hashtag","color":"green"},{"text":" (1/4)","color":"gray"}]
execute if score #slot0 lbp_info matches 1 run title @s actionbar [{"text":"Center: ","color":"yellow"},{"text":"Double Chest","color":"green"},{"text":" (2/4)","color":"gray"}]
execute if score #slot0 lbp_info matches 2 run title @s actionbar [{"text":"Center: ","color":"yellow"},{"text":"Cage","color":"green"},{"text":" (3/4)","color":"gray"}]
execute if score #slot0 lbp_info matches 3 run title @s actionbar [{"text":"Center: ","color":"yellow"},{"text":"1812","color":"green"},{"text":" (4/4)","color":"gray"}]
