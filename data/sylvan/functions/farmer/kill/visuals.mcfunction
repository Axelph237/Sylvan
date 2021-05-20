kill @e[distance=..1,nbt={Item:{id:"minecraft:poppy",Count:1b,tag:{display:{Name:'{"text":"Goodbye and Farewell"}'}}}}]
playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 1.5
scoreboard players set @s farmer_tick 0
tag @s add goodbye
execute as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10005}}]}] run data modify entity @s ArmorItems[].tag.CustomModelData set value 10005
tp @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5] ~ ~ ~ facing entity @p[tag=sylvan,sort=nearest]
execute at @s as @e[tag=spirit,distance=..0.5,limit=1] at @s positioned ~ ~-0.55 ~ run summon armor_stand ^0.175 ^ ^-0.1 {Invisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Tags:["showoff"],Pose:{LeftArm:[0f,0f,0f],RightArm:[-90f,0f,0f]},HandItems:[{id:"minecraft:poppy",Count:1b},{}]}
execute as @e[type=minecraft:armor_stand,tag=showoff,limit=1,distance=..1] at @s run tp @s ~ ~ ~ facing entity @p[tag=sylvan,sort=nearest]
execute as @e[type=minecraft:armor_stand,tag=showoff,limit=1,distance=..1] at @s run tp @s ~ ~ ~ ~-11 ~
execute as @e[tag=spirit,limit=1,distance=..0.5,sort=nearest] at @s run function sylvan:farmer/add/to_spawn
