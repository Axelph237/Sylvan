# Tag and reset score
scoreboard players set @e[tag=farmer,distance=..0.5,limit=1] farmer_tick 0
execute store result score @e[tag=farmer,distance=..0.5,limit=1] long_timers run time query gametime
tag @e[tag=farmer,distance=..0.5,limit=1] add admire
# Check if favorite
data modify storage sylvan:favorite.query id set from entity @s ArmorItems[].tag.FavoriteFlower.id
execute store success score $query favorite_flower run data modify storage sylvan:favorite.query id set from entity @e[limit=1,tag=flower,tag=collectable,distance=..1.5] Item.id
# Visuals
tp @s ~ ~ ~ facing entity @p[sort=nearest]
execute at @s positioned ~ ~-0.95 ~ run summon armor_stand ^0.17 ^ ^-0.12 {Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Tags:["showoff"],Pose:{LeftArm:[0f,0f,0f],RightArm:[-90f,0f,0f]},HandItems:[{id:"minecraft:poppy",Count:1b},{}]}
data modify entity @e[limit=1,tag=showoff,nbt={HandItems:[{id:"minecraft:poppy",Count:1b},{}]},distance=..1] HandItems[0].id set from storage sylvan:favorite.query id
execute as @e[type=minecraft:armor_stand,tag=showoff,limit=1,distance=..2] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=showoff,limit=1,distance=..2] at @s run tp @s ~ ~ ~ ~-10 ~
# Clarify
execute if score $query favorite_flower matches 0 run function sylvan:farmer/favorite_flower/success
execute if score $query favorite_flower matches 1 run function sylvan:farmer/favorite_flower/fail
