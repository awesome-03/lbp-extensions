# Loot only rolls when the chest gets opened, so open it
loot insert ~ ~ ~ loot lbp_ext:unpack
data remove block ~ ~ ~ Items[{tag:{lbp_ext_unpack:1b}}]
