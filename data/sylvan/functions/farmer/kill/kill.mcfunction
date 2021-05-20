kill @e[tag=spirit,distance=..0.5,limit=1]
kill @e[tag=showoff,distance=..1,limit=1]
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.5
kill @s
particle dust 0.271 0.271 0.271 1 ~ ~0.5 ~ 0.1 0.2 0.1 1 10 normal
loot spawn ~ ~ ~ loot sylvan:spirit_loot
