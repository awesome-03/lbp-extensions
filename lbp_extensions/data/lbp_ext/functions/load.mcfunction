# Register dropped axe scoreboard objectives immediately on reload (tick 0)
scoreboard objectives add dropped_dia_axe minecraft.dropped:minecraft.diamond_axe
scoreboard objectives add dropped_iro_axe minecraft.dropped:minecraft.iron_axe
scoreboard objectives add dropped_gol_axe minecraft.dropped:minecraft.golden_axe
scoreboard objectives add dropped_sto_axe minecraft.dropped:minecraft.stone_axe
scoreboard objectives add dropped_woo_axe minecraft.dropped:minecraft.wooden_axe
scoreboard objectives add dropped_net_axe minecraft.dropped:minecraft.netherite_axe

scoreboard objectives add lbp_info dummy
scoreboard objectives add lbp_info_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add lbp_info_pool dummy
scoreboard objectives add lbp_info_var dummy
scoreboard objectives add lbp_info_orig dummy
scoreboard objectives add lbp_info_turn dummy
scoreboard objectives add lbp_info_idx dummy
team add lbp_info_piglin
team modify lbp_info_piglin color gold
team add lbp_info_melee
team modify lbp_info_melee color red
team add lbp_info_hoglin
team modify lbp_info_hoglin color light_purple

# Schedule late initialization
schedule function lbp_ext:init_late 1t
