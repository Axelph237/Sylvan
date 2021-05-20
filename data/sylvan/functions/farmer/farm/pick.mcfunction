summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Tags:["lookhere"]}
execute at @s facing entity @e[tag=lookhere] eyes run tp @e[tag=spirit,limit=1,distance=..0.5] ~ ~ ~ ~ ~
tp @s ~ ~ ~
kill @e[tag=lookhere]
particle dust 0.129 1.000 0.478 1 ~ ~0.3 ~ 0.2 0.2 0.2 1 10 normal
function #sylvan:replant
