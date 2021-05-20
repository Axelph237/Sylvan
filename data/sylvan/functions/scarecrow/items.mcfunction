summon item ~ ~1 ~ {Motion:[-0.01,0.1,0.05],Tags:["chest"],Item:{id:"minecraft:debug_stick",Count:1b}}
summon item ~ ~1 ~ {Motion:[-0.05,0.1,-0.02],Tags:["legs"],Item:{id:"minecraft:debug_stick",Count:1b}}
summon item ~ ~1 ~ {Motion:[0.03,0.1,-0.04],Tags:["boots"],Item:{id:"minecraft:debug_stick",Count:1b}}
data modify entity @e[type=item,tag=chest,limit=1,sort=nearest] Item set from entity @s ArmorItems[2]
data modify entity @e[type=item,tag=legs,limit=1,sort=nearest] Item set from entity @s ArmorItems[1]
data modify entity @e[type=item,tag=boots,limit=1,sort=nearest] Item set from entity @s ArmorItems[0]
kill @e[type=item,nbt={Item:{id:"minecraft:debug_stick"}}]
