# Check if still riding
execute unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:ender_dragon"}}}] run scoreboard players set @s be.flying 0
execute unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:ender_dragon"}}}] run return 0

# Forward movement
execute at @s run tp @s ^ ^ ^0.5

# Up/down controls (using jump/sneak)
execute if entity @s[scores={be.sneak=1..}] at @s run tp @s ~ ~-0.2 ~
execute if predicate beyond_end:is_jumping at @s run tp @s ~ ~0.3 ~

# Dragon particles based on type
execute at @s as @e[type=ender_dragon,tag=be.fire,distance=..2] run particle minecraft:flame ~ ~ ~ 1 0.5 1 0.01 10
execute at @s as @e[type=ender_dragon,tag=be.frost,distance=..2] run particle minecraft:snowflake ~ ~ ~ 1 0.5 1 0.01 10
execute at @s as @e[type=ender_dragon,tag=be.lightning,distance=..2] run particle minecraft:electric_spark ~ ~ ~ 1 0.5 1 0.01 10
execute at @s as @e[type=ender_dragon,tag=be.void,distance=..2] run particle minecraft:portal ~ ~ ~ 1 0.5 1 0.01 10

# Flight sounds
execute if score @s be.flying matches 1 run playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 0.5 1.2

scoreboard players add @s be.flying 1
execute if score @s be.flying matches 100.. run scoreboard players set @s be.flying 1