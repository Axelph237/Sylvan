tag @s remove init
# Snap
execute at @s run tp @e[tag=spirit,limit=1,distance=..0.5] ~ ~ ~ 0 0
execute unless block ~ ~ ~ minecraft:chest run tp @s ~ ~-0.9 ~
# Showoff
execute as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10004}}]}] run data modify entity @s ArmorItems[].tag.CustomModelData set value 10004
execute at @s as @e[tag=spirit,distance=..0.5,limit=1] at @s positioned ~ ~-0.55 ~ run summon armor_stand ^0.175 ^ ^-0.1 {Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Tags:["showoff"],Pose:{LeftArm:[0f,0f,0f],RightArm:[-90f,0f,0f]},HandItems:[{id:"minecraft:barrier",Count:1b},{}]}
execute at @s unless block ~ ~ ~ minecraft:chest positioned ~ ~0.9 ~ as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.6] positioned ~ ~-0.9 ~ run data modify entity @e[tag=showoff,limit=1,distance=..1,nbt={HandItems:[{id:"minecraft:barrier"}]}] HandItems[].id set from entity @s ArmorItems[].tag.Inventory[0].id
execute at @s if block ~ ~ ~ minecraft:chest as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.6] run data modify entity @e[tag=showoff,limit=1,distance=..1,nbt={HandItems:[{id:"minecraft:barrier"}]}] HandItems[].id set from entity @s ArmorItems[].tag.Inventory[-1].id
# Fork
execute unless data block ~ ~ ~ Items[{Slot:26b}] if block ~ ~ ~ minecraft:chest as @e[tag=spirit,limit=1,distance=..0.5,sort=nearest] at @s run function sylvan:farmer/add/to_chest
execute if data block ~ ~ ~ Items[{Slot:26b}] if block ~ ~ ~ minecraft:chest as @e[tag=spirit,limit=1,distance=..0.5,sort=nearest] at @s run function sylvan:farmer/add/to_spawn
execute unless block ~ ~ ~ minecraft:chest as @e[tag=spirit,limit=1,distance=..0.5,sort=nearest] at @s run function sylvan:farmer/add/to_spawn
