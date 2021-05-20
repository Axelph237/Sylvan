# Summoning
execute at @e[tag=summonhere] run function sylvan:farmer/summon
kill @e[tag=summonhere]
# Floaty Cloud
execute at @e[type=minecraft:area_effect_cloud,tag=farmer] if block ~ ~-0.5 ~ #sylvan:farmable unless block ~ ~-0.5 ~ minecraft:cactus run particle cloud ~ ~-0.05 ~ 0.1 0 0.1 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=farmer] if block ~ ~-0.5 ~ #minecraft:crops unless block ~ ~-0.5 ~ minecraft:cactus run particle cloud ~ ~-0.05 ~ 0.1 0 0.1 0 1 normal 
# Farmer Ticking
scoreboard players add @e[tag=farmer,type=minecraft:area_effect_cloud] farmer_tick 1
execute as @e[tag=admire,tag=farmer] if score @s farmer_tick >= @s f_tick_12 at @s run function sylvan:farmer/favorite_flower/reset
# Sound and Kill
execute as @e[type=minecraft:area_effect_cloud,tag=!goodbye,tag=farmer] at @s if entity @e[nbt={Item:{id:"minecraft:poppy",Count:1b,tag:{display:{Name:'{"text":"Goodbye and Farewell"}'}}}},distance=..1] run function sylvan:farmer/kill/visuals
execute as @e[type=minecraft:area_effect_cloud,tag=goodbye,tag=farmer] if score @s farmer_tick = @s f_tick_max at @s run function sylvan:farmer/kill/kill
# Costumes!
execute if score $time time_query matches 12542..23460 run tag @e[tag=farmer,tag=!goodbye,tag=!admire] add sleep
execute unless score $time time_query matches 12542..23460 run tag @e[tag=farmer,tag=!goodbye,tag=!admire] remove sleep
execute if score $time time_query matches 12542..23460 as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=sleep] if score @s farmer_tick = @s f_tick_max at @s as @e[tag=spirit,distance=..0.5,limit=1] run playsound minecraft:entity.fox.sleep master @a ~ ~ ~ 0.3 0.5
execute unless score $time time_query matches 12542..23460 as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=return] if score @s farmer_tick > @s f_tick_34 at @s run kill @e[tag=showoff,distance=..1]
execute as @e[tag=farmer,tag=sleep] at @s as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10003}}]}] run data modify entity @s ArmorItems[].tag.CustomModelData set value 10003
execute unless score $time time_query matches 12542..23460 as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!return] if score @s farmer_tick <= @s f_tick_34 at @s as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10001}}]}] run data modify entity @s ArmorItems[].tag.CustomModelData set value 10001
execute unless score $time time_query matches 12542..23460 as @e[tag=farmer,tag=!goodbye,tag=!admire] if score @s farmer_tick > @s f_tick_34 at @s as @e[type=minecraft:armor_stand,tag=spirit,limit=1,distance=..0.5,nbt=!{ArmorItems:[{tag:{CustomModelData:10002}}]}] run data modify entity @s ArmorItems[].tag.CustomModelData set value 10002
execute unless score $time time_query matches 12542..23460 as @e[tag=farmer,tag=!goodbye,tag=!admire] if score @s farmer_tick > @s f_tick_34 at @s at @e[tag=spirit,distance=..0.5,limit=1] run function sylvan:farmer/happy_particle
execute unless score $time time_query matches 12542..23460 as @e[tag=farmer,tag=!goodbye,tag=!admire] if score @s farmer_tick = @s f_tick_34 at @s run playsound minecraft:entity.panda.pre_sneeze master @a ~ ~ ~ 0.1 0.75
# Kill Particles
execute as @e[type=minecraft:area_effect_cloud,tag=fparticles] at @s if block ~ ~ ~ minecraft:fire run function sylvan:farmer/particles_remove
# Air reload
execute as @e[type=minecraft:area_effect_cloud,tag=farmer] store result entity @s Air short 1 run time query gametime
# Collect and Deposit
execute as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!sleep] at @s unless entity @s[scores={chest_vars=20..}] if entity @e[type=item,nbt=!{Item:{tag:{}}},distance=..1.5,tag=!nopickup] run function sylvan:farmer/collect/start
execute as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!sleep,scores={chest_vars=20..}] at @s run function sylvan:farmer/add/init
execute as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!sleep,tag=init] if score @s farmer_tick matches 1.. at @s run function sylvan:farmer/add/prep
#
execute as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!sleep,tag=!return] if score @s farmer_tick >= @s f_tick_max at @s run function sylvan:farmer/search/start
# Get Pos and PrevPos
execute as @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!sleep,tag=return] if score @s farmer_tick >= @s f_tick_max at @s unless data entity @e[tag=spirit,limit=1,sort=nearest,distance=..0.5] ArmorItems[].tag.Inventory[] run function sylvan:farmer/return
execute at @e[tag=farmer,tag=!goodbye,tag=!admire,tag=!sleep,tag=!return,scores={chest_vars=..19}] run data modify entity @e[tag=spirit,limit=1,distance=..0.5] ArmorItems[].tag.PrevPos set from entity @e[limit=1,sort=nearest,tag=farmer,distance=..0.5] Pos
# Score Reset
execute as @e[tag=farmer,type=minecraft:area_effect_cloud] if score @s farmer_tick >= @s f_tick_max run scoreboard players set @s farmer_tick 0
