# Reset debug scoreboards
scoreboard objectives add debug_mobs dummy
scoreboard players set #total_mobs debug_mobs 0
scoreboard players set #bastion_mobs debug_mobs 0
scoreboard players set #other_mobs debug_mobs 0

# Count mobs
execute as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item] run scoreboard players add #total_mobs debug_mobs 1
execute as @e[tag=bastion_mob] run scoreboard players add #bastion_mobs debug_mobs 1
execute as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item,tag=!bastion_mob] run scoreboard players add #other_mobs debug_mobs 1

# Highlight all mobs with glowing effect
effect give @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item] glowing 10 0 true

# Print summary to chat
tellraw @a ["",{"text":"=== MOB DEBUG SUMMARY ===","color":"gold","bold":true}]
tellraw @a [{"text":"Total Mobs in World: ","color":"yellow"},{"score":{"name":"#total_mobs","objective":"debug_mobs"},"color":"white"}]
tellraw @a [{"text":"With 'bastion_mob' tag: ","color":"green"},{"score":{"name":"#bastion_mobs","objective":"debug_mobs"},"color":"white"}]
tellraw @a [{"text":"Without 'bastion_mob' tag: ","color":"red"},{"score":{"name":"#other_mobs","objective":"debug_mobs"},"color":"white"}]
tellraw @a [{"text":"Click any mob entry below to copy its /data get command:","color":"gray","italic":true}]

# Print individual mob details with click-to-copy /data get
execute as @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item] at @s run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"yellow"},{"text":" Pos: [","color":"gray"},{"nbt":"Pos[0]","entity":"@s"},{"text":", ","color":"gray"},{"nbt":"Pos[1]","entity":"@s"},{"text":", ","color":"gray"},{"nbt":"Pos[2]","entity":"@s"},{"text":"] Tags: ","color":"gray"},{"nbt":"Tags","entity":"@s"},{"text":" [GET DATA]","color":"gold","clickEvent":{"action":"suggest_command","value":"/data get entity @s"}}]"
