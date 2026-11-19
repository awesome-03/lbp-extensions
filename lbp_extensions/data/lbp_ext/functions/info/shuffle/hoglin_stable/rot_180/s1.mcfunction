scoreboard players set #shuffled lbp_info 1
scoreboard players operation #to lbp_info = #slot1 lbp_info
scoreboard players operation #to lbp_info += #dir lbp_info
execute if score #to lbp_info matches 2.. run scoreboard players set #to lbp_info 0
execute if score #to lbp_info matches ..-1 run scoreboard players set #to lbp_info 1
execute if score #slot1 lbp_info matches 0.. run function lbp_ext:info/shuffle/hoglin_stable/rot_180/s1_set
execute if score #slot1 lbp_info matches 0 run title @s actionbar [{"text":"Left Gap: ","color":"yellow"},{"text":"Bad Gap","color":"green"},{"text":" (1/2)","color":"gray"}]
execute if score #slot1 lbp_info matches 1 run title @s actionbar [{"text":"Left Gap: ","color":"yellow"},{"text":"Good Gap","color":"green"},{"text":" (2/2)","color":"gray"}]
