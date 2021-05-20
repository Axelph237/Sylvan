execute as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10003}}]}] run data modify entity @s ArmorItems[].tag.CustomModelData set value 10003
tag @s add sleeping
