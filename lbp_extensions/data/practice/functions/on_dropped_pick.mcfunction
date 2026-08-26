scoreboard players reset @a dropped_net_pick
scoreboard players reset @a dropped_dia_pick
scoreboard players reset @a dropped_iro_pick
scoreboard players reset @a dropped_gol_pick
scoreboard players reset @a dropped_sto_pick
scoreboard players reset @a dropped_woo_pick

# --- Standard Mode ---
# Normal throw -> Hub
execute if score #reverse_pick_throw practice matches 0 unless predicate practice:sneaking run function practice:stop
# Shift throw -> Rerun
execute if score #reverse_pick_throw practice matches 0 if predicate practice:sneaking run function practice:rerun

# --- Reversed Mode ---
# Normal throw -> Rerun
execute if score #reverse_pick_throw practice matches 1 unless predicate practice:sneaking run function practice:rerun
# Shift throw -> Hub
execute if score #reverse_pick_throw practice matches 1 if predicate practice:sneaking run function practice:stop

# --- Confirm Mode ---
# Any throw -> Send confirm message
execute if score #reverse_pick_throw practice matches 2 run function lbp_ext:confirm_reset_menu
