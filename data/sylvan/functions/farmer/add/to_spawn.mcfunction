data modify block 458 0 720 Items set from entity @s ArmorItems[].tag.Inventory
data remove entity @s ArmorItems[].tag.Inventory[]
loot spawn ~ ~ ~ mine 458 0 720 minecraft:air{drop_contents:1b}
execute positioned ~ ~ ~ run tag @e[type=item,distance=..2] add nopickup
