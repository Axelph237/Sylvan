fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:fire
kill @s
execute if entity @s[tag=scarecrow] run summon item ~ ~1 ~ {Motion:[0.01,0.2,-0.008],Item:{id:"minecraft:carved_pumpkin",Count:1b}}
