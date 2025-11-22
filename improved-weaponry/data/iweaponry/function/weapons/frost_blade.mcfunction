# Frost Blade - Freeze enemies
execute if entity @s[scores={iw.sword_used=1..}] as @e[type=#minecraft:hostile,distance=..6] run effect give @s minecraft:slowness 10 4 true
execute if entity @s[scores={iw.sword_used=1..}] as @e[type=#minecraft:hostile,distance=..6] run effect give @s minecraft:weakness 5 2 true

# Ice particles
execute if entity @s[scores={iw.sword_used=1..}] run particle minecraft:snowflake ~ ~1 ~ 3 1 3 0.1 80
execute if entity @s[scores={iw.sword_used=1..}] run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.5

scoreboard players set @s iw.sword_used 0