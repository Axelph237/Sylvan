tag @s remove admire
kill @e[tag=showoff,distance=..1]
data modify entity @e[tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10001}}]}] ArmorItems[].tag.CustomModelData set value 10001
