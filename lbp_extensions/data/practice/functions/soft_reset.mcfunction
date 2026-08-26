# Extinguish fire
# execute unless score #reset_from_chat practice matches 1 if entity @a[gamemode=survival] run schedule function practice:_start/silent_gamemode/survival 1t

execute unless score #reset_from_chat practice matches 1 if entity @a[gamemode=adventure] run schedule function practice:_start/silent_gamemode/adventure 1t
execute if score #reset_from_chat practice matches 1 if entity @a[gamemode=adventure] run schedule function practice:_start/silent_gamemode/adventure 2t

function practice:_start/silent_gamemode/creative

# Reset health
effect give @a instant_health 1 4 true

# If carpet is active: Reset hunger, saturation, and exhaustion directly to settings instantly (exact values, no effects)
execute if score has_carpet practice matches 1 run function lbp_ext:carpet/soft_reset

# If carpet is not active: Copy LBP settings score to target sat score
execute if score has_carpet practice matches 0 run scoreboard players operation #target_sat practice = sat_reset practice

# Query current player saturation directly onto player's own score in 'practice'
execute if score has_carpet practice matches 0 as @a store result score @s practice run data get entity @s foodSaturationLevel

# Apply saturation calculation
execute if score has_carpet practice matches 0 as @a run function lbp_ext:saturation
