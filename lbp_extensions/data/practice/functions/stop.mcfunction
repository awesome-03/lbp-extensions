schedule clear practice:_start/run_tick
schedule clear practice:_start/wait_for_movement/_standard/wait
schedule clear practice:_start/clear_forceload

difficulty peaceful

function practice:_start/silent_gamemode/adventure

effect clear @s

effect give @a jump_boost 1 255 true

attribute @s generic.knockback_resistance base set 0

function practice:previous_run_info/save

clear @a

title @s title [{"score":{"name":"minutes","objective":"timer.temp"}},":",{"nbt":"seconds","storage":"timer","interpret":true}]

function timer:stop
function timer:reset
function timer:display/hide

function practice:_start/wait_for_movement/_warp/stop_warping
schedule clear practice:_start/wait_for_movement/_warp/reset_check

scoreboard objectives setdisplay sidebar

scoreboard players set total_barters practice.barters 0
scoreboard players set barter_count current_barter 0

tag @e[type=!#practice:clear_exception_filter] add removal_filter
tag @e[type=area_effect_cloud, tag=spawnpoint] add removal_filter
execute as @e[tag=removal_filter] at @s run tp @s ~ -100 ~
execute as @e[tag=removal_filter] run data merge entity @s {Health:0.0f, DeathLootTable:"minecraft:empty", Silent:1}
kill @e[tag=removal_filter]

# IF CARPET IS ACTIVE: Instantly reset hunger, saturation, and exhaustion to full lobby status
execute if score has_carpet practice matches 1 run function lbp_ext:carpet/stop

# IF CARPET IS NOT ACTIVE (Vanilla fallback):
# (We don't give the saturation effect in the lobby so that starting saturation is not overwritten by lobby saturation)

function practice:soft_reset

execute as @a in the_nether run tp @s 0 300 0
execute unless score #reset_from_chat practice matches 1 run schedule function practice:_stop/teleport_to_hub 1t
execute if score #reset_from_chat practice matches 1 run schedule function practice:_stop/teleport_to_hub 2t

scoreboard players set running bastion.temp 0
scoreboard players set #has_state_inventory practice 0
scoreboard players set #reset_from_chat practice 0
