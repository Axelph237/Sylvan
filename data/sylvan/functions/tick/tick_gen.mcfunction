# General stuff
execute store result score $time time_query run time query daytime
execute store result score $gametime long_timers run time query gametime
scoreboard players enable @a[tag=sylvan] rewards
# Summon spirit
execute as @a[tag=sylvan,predicate=sylvan:25_levels,scores={use_pumpkin=1..}] at @s run function sylvan:farmer/summon/start
scoreboard players reset @a[tag=sylvan,predicate=!sylvan:25_levels,scores={use_pumpkin=1..}] use_pumpkin
scoreboard players reset @a[tag=!sylvan,scores={use_pumpkin=1..}] use_pumpkin
# Custom Villager Trade
function #sylvan:villager_trades
# Rewards
execute as @a[scores={rewards=1..}] at @s run function sylvan:rewards/specify_reward
# Detect peaceful mob health change
execute as @e[type=#sylvan:peaceful,type=!wolf] store result score @s p_mob_h run data get entity @s Health
execute as @e[type=#sylvan:peaceful,type=!wolf] at @s if score @s p_mob_h < @s p_mob_hprev run scoreboard players set @a[tag=sylvan,distance=..20] dmg_sylvan 1
execute as @e[type=#sylvan:peaceful,type=!wolf] run scoreboard players operation @s p_mob_hprev = @s p_mob_h
# Convert Rose
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{CustomModelData:10001}}}] at @s if block ~ ~0.8 ~ minecraft:water run function sylvan:quests/convert_rose
# Easter Egg particles
tag @e[type=egg,nbt={Item:{id:"minecraft:egg",tag:{CustomModelData:10001}}}] add easterEgg
execute as @e[tag=easterEgg] at @s run particle minecraft:dust 0.808 0.537 0.839 1 ~ ~ ~ 0.1 0.1 0.1 0 1
execute as @e[type=egg,nbt={Item:{id:"minecraft:egg",tag:{CustomModelData:10001}}}] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["easterParts"],Duration:2,Particle:"block air"}
execute as @e[tag=easterParts] at @s unless entity @e[type=egg,tag=easterEgg,distance=..3] at @s run function sylvan:egg_particles
# Okay Merle
execute as Merlie at @s if entity @s[tag=!traded,nbt=!{Inventory:[{id:"minecraft:paper",tag:{CustomModelData:10001}}]}] if entity @e[type=minecraft:villager,tag=v.mayor,distance=..5] run function sylvan:ok_merle
