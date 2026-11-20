# Tag all living mob entities for duplicate checking
tag @e[type=!player,type=!area_effect_cloud,type=!armor_stand,type=!item] add dup_check
tag @e remove is_duplicate

# Process each mob to mark overlapping duplicates within 0.3 blocks
execute as @e[tag=dup_check] at @s run function lbp_ext:process_dup_mob

# Kill all detected duplicate mobs standing in the same spot
kill @e[tag=is_duplicate]

# Clean up tags
tag @e remove dup_check
tag @e remove is_duplicate
