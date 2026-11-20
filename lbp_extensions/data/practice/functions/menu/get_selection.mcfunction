# Overridden get_selection with strict menu tag check and selection 11 support
scoreboard players set bool chest_menu 0

execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:1} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 1
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:2} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 2
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:3} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 3
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:4} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 4
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:5} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 5
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:6} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 6
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:7} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 7
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:8} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 8
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:9} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 9
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:10} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 10
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:11} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 11
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:12} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 12
execute store success score bool chest_menu run clear @s #practice:chest_menu{menu:1,selection:13} 0
execute if score bool chest_menu matches 1 run scoreboard players set selection chest_menu 13
