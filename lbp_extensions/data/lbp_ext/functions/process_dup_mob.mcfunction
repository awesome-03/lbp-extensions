# Mark current mob as kept by removing dup_check tag
tag @s remove dup_check

# Tag any other mob at the exact same position (distance=..0) that still has dup_check as a duplicate
execute as @e[tag=dup_check, distance=..0] run tag @s add is_duplicate
