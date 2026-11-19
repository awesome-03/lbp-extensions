# As a stall or housing unit's marker, at it: out with its variant, in with #to's. A block that leaned on the old one
# breaks off, like LBP's own rebuilds that drops nothing
execute store result score #drops lbp_info run gamerule doTileDrops
gamerule doTileDrops false
function lbp_ext:info/piece/erase
scoreboard players operation @s lbp_info_var = #to lbp_info
function lbp_ext:info/piece/place
execute if score #drops lbp_info matches 1 run gamerule doTileDrops true
