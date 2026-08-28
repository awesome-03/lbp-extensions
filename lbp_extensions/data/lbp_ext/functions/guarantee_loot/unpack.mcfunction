# Opening a chest is what rolls its loot table, so do it the same way here to get the real vanilla layout
loot insert ~ ~ ~ loot lbp_ext:unpack
data remove block ~ ~ ~ Items[{tag:{lbp_ext_unpack:1b}}]
