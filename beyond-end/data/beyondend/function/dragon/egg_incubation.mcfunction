# Check if egg is near heat source (fire, lava, torches)
execute if block ~ ~-1 ~ #minecraft:fire run scoreboard players add @s be.egg_heat 2
execute if block ~ ~-1 ~ minecraft:lava run scoreboard players add @s be.egg_heat 3
execute if block ~ ~-1 ~ minecraft:torch run scoreboard players add @s be.egg_heat 1
execute if block ~ ~-1 ~ minecraft:campfire[lit=true] run scoreboard players add @s be.egg_heat 4

# Heat particles
execute if score @s be.egg_heat matches 50.. run particle minecraft:flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 5
execute if score @s be.egg_heat matches 100.. run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0.01 3

# Increment hatch timer when hot enough
execute if score @s be.egg_heat matches 100.. run scoreboard players add @s be.hatch_time 1

# Display progress
execute if score @s be.hatch_time matches 100 run title @a[distance=..10] actionbar ["",{"text":"Egg Progress: ","color":"gray"},{"text":"10%","color":"yellow"}]
execute if score @s be.hatch_time matches 500 run title @a[distance=..10] actionbar ["",{"text":"Egg Progress: ","color":"gray"},{"text":"50%","color":"gold"}]
execute if score @s be.hatch_time matches 900 run title @a[distance=..10] actionbar ["",{"text":"Egg Progress: ","color":"gray"},{"text":"90%","color":"red"}]

# Egg cracks (visual stages)
execute if score @s be.hatch_time matches 500 run particle minecraft:block dragon_egg ~ ~0.5 ~ 0.3 0.3 0.3 0 10
execute if score @s be.hatch_time matches 800 run particle minecraft:block dragon_egg ~ ~0.5 ~ 0.3 0.3 0.3 0 20

# Hatch at 1000 ticks (~50 seconds of heating)
execute if score @s be.hatch_time matches 1000.. run function beyond_end:dragon/egg_hatch

# Cool down when not heated
execute unless score @s be.egg_heat matches 50.. run scoreboard players remove @s be.egg_heat 1
scoreboard players set @s[scores={be.egg_heat=..-1}] be.egg_heat 0