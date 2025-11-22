# Baby dragon particles
execute if entity @s[tag=be.fire] run particle minecraft:flame ~ ~0.3 ~ 0.2 0.2 0.2 0.01 3
execute if entity @s[tag=be.frost] run particle minecraft:snowflake ~ ~0.3 ~ 0.2 0.2 0.2 0.01 3
execute if entity @s[tag=be.lightning] run particle minecraft:electric_spark ~ ~0.3 ~ 0.2 0.2 0.2 0.01 3
execute if entity @s[tag=be.void] run particle minecraft:portal ~ ~0.3 ~ 0.2 0.2 0.2 0.01 3

# Follow nearest player holding food
execute as @a[distance=..8,nbt={SelectedItem:{id:"minecraft:cooked_beef"}}] run tp @e[type=armor_stand,tag=be.baby_dragon,distance=..8,limit=1,sort=nearest] ^ ^ ^0.1 facing entity @s

# Growth over time (600 ticks = 30 seconds per stage)
scoreboard players add @s be.dragon_age 1

# Growth stages
execute if score @s be.dragon_age matches 600 run title @a[distance=..10] subtitle ["",{"text":"Your dragon is growing!","color":"gray"}]
execute if score @s be.dragon_age matches 600 run title @a[distance=..10] title ["",{"text":"Growth Stage 1","color":"yellow"}]

execute if score @s be.dragon_age matches 1200 run title @a[distance=..10] title ["",{"text":"Growth Stage 2","color":"gold"}]

# Fully grown at 2400 ticks (2 minutes)
execute if score @s be.dragon_age matches 2400.. run function beyond_end:dragon/grow_dragon
