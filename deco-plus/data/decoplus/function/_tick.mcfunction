# Check for furniture placement
execute as @a[scores={dp.interact=1..}] at @s run function deco_plus:blocks/place_furniture

# Animated blocks (rotating fans, clocks, etc.)
execute as @e[type=armor_stand,tag=dp.animated] at @s run tp @s ~ ~ ~ ~5 ~

# Lamp lighting
execute as @e[type=armor_stand,tag=dp.lamp,tag=dp.on] at @s run particle minecraft:glow ~ ~1.5 ~ 0.2 0.2 0.2 0 2

# TV screens animation
execute as @e[type=armor_stand,tag=dp.tv] at @s run particle minecraft:dust 0.5 0.5 1 1 ~ ~1 ~ 0.3 0.2 0 0 5

# Fountain water
execute as @e[type=armor_stand,tag=dp.fountain] at @s run particle minecraft:falling_water ~ ~1 ~ 0.5 0.3 0.5 0 10

# Reset interaction score
scoreboard players set @a[scores={dp.interact=1..}] dp.interact 0