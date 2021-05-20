data remove block 458 0 720 Items[]
scoreboard players set @s farmer_tick 0
scoreboard players set @s chest_vars 0
tag @s add return
tag @s add init
data modify entity @s Pos set from entity @e[tag=spirit,limit=1,sort=nearest,distance=..0.5] ArmorItems[].tag.ChestPos
