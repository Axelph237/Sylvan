execute if block ~ ~ ~ minecraft:carved_pumpkin if block ~ ~-1 ~ #minecraft:leaves run function sylvan:farmer/summon/success
scoreboard players add $dist pumpkin_search 1
execute if score $dist pumpkin_search matches ..90 if score $hit pumpkin_search matches 0 positioned ^ ^ ^0.1 run function sylvan:farmer/summon/check
