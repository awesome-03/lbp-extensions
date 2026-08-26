# Playsound to alert the player
playsound ui.button.click player @s ~ ~ ~ 0.8 1

# Send clickable single-line chat message to player
tellraw @s ["",{"text":"Choose option: ","color":"yellow"},{"text":"[ Click to Rerun ]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function lbp_ext:chat_rerun"},"hoverEvent":{"action":"show_text","contents":["Click to rerun this seed"]}},{"text":"   ","color":"gray"},{"text":"[ Click to Lobby ]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function lbp_ext:chat_lobby"},"hoverEvent":{"action":"show_text","contents":["Click to return to lobby"]}}]
