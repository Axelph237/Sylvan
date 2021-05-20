scoreboard players set $hit pumpkin_search 1
scoreboard players set @s pumpkin_search 1
# Set blocks
setblock ~ ~-1 ~ chest replace
setblock ~ ~ ~ air replace
# Summon
execute align xyz run summon area_effect_cloud ~0.5 ~-0.1 ~0.5 {Particle:"block",Duration:2147483647,Tags:["farmer","new"],Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["new","spirit"],ArmorItems:[{},{},{},{id:"minecraft:bone",Count:1b,tag:{CustomModelData:10001,ChestPos:[0d,0d,0d],PrevPos:[0d,0d,0d],Inventory:[],FavoriteFlower:{}}}]}]}
execute align xyz run summon area_effect_cloud ~0.5 ~-0.9 ~0.5 {Particle:"dust 0.129 1.000 0.478 1",Duration:2147483647,Radius:0.75f,Tags:["fparticles"]}
# Get ChestPos
execute as @e[tag=new,tag=spirit] at @s run data modify entity @s ArmorItems[].tag.ChestPos set from entity @s Pos
# Get FavoriteFlower
execute as @e[tag=new,tag=spirit] run function sylvan:farmer/favorite_flower/set
# Set f_tick_max to default[40]
scoreboard players set @e[tag=farmer,tag=new] f_tick_max 80
execute as @e[tag=farmer,tag=new] run function sylvan:f_ticks_update
# Remove tags
tag @e[tag=new,tag=spirit] remove new
tag @e[tag=new,tag=farmer] remove new
