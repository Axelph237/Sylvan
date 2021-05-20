data modify entity @s Marker set value 1b
data modify entity @s Invisible set value 1b
data modify entity @s Pose.Head set value [0f,0f,0f]
function sylvan:scarecrow/items
data modify entity @s ArmorItems set value [{id:"minecraft:empty",Count:1b},{id:"minecraft:empty",Count:1b},{id:"minecraft:empty",Count:1b},{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:1001}}]
particle minecraft:smoke ~ ~1 ~ 0.3 0.6 0.3 0 25 normal
playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.25 1.1
summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["scarecrowP"]}
tag @s add scarecrow
