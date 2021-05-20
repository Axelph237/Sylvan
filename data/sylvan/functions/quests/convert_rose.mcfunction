kill @s
summon item ~ ~ ~ {Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Blooming Rose of Life","color":"white","bold":true,"italic":false}',Lore:['{"text":"And they thought it was a tree...","color":"light_purple","italic":true}']},CustomModelData:10001,Enchantments:[{}]}}}
particle minecraft:end_rod ~ ~ ~ 1 1 1 0.3 200 normal
playsound minecraft:entity.lightning_bolt.impact master @a[distance=..25] ~ ~ ~ 1 0.5
