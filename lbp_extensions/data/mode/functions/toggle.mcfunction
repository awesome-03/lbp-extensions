# Toggle reverse_pick_throw score
execute if score #reverse_pick_throw practice matches 0 run scoreboard players set #temp practice 1
execute if score #reverse_pick_throw practice matches 1.. run scoreboard players set #temp practice 0
execute unless score #reverse_pick_throw practice = #reverse_pick_throw practice run scoreboard players set #temp practice 1

scoreboard players operation #reverse_pick_throw practice = #temp practice

execute if score #reverse_pick_throw practice matches 1 run tellraw @a {"text":"Toggled Pickaxe Reset: Reversed","color":"gold"}
execute if score #reverse_pick_throw practice matches 0 run tellraw @a {"text":"Toggled Pickaxe Reset: Normal","color":"yellow"}

execute at @a run playsound ui.cartography_table.take_result player @a ~ ~ ~ 0.8 2
