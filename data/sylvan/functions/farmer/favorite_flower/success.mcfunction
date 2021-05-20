data modify entity @s[nbt=!{ArmorItems:[{tag:{CustomModelData:10005}}]}] ArmorItems[].tag.CustomModelData set value 10005
kill @e[tag=flower]
particle minecraft:heart ~ ~0.3 ~ 0 0 0 0 1
function sylvan:farmer/favorite_flower/set
playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1.5
# Add loot table spawn here
loot spawn ~ ~0.1 ~ loot sylvan:famer_trades
tag @e[type=item,distance=..0.3] add nopickup
