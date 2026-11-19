# copied from LBP3 by tools/gen_bastion_info.py, plus a copy of what the piece goes over so the Shuffle Wand can put it back
clone ~ ~ ~ ~6 ~5 ~7 ~ 1 ~
execute if score treasure_center bastion.settings matches ..-1 run function bastionbuilder:internal/place/treasure/bases/centers/center/random_center/rot_0
execute if score treasure_center bastion.settings matches 0.. run function bastionbuilder:internal/place/treasure/bases/centers/center/center/fixed_center/rot_0
