# Frost breath attack
particle minecraft:snowflake ^ ^1 ^3 1 0.5 1 0.1 100
particle minecraft:block ice ^ ^1 ^5 1 0.5 1 0.1 30

# Freeze and slow entities
execute positioned ^ ^1 ^3 run effect give @e[type=#minecraft:hostile,distance=..5] minecraft:slowness 10 5
execute positioned ^ ^1 ^3 run effect give @e[type=#minecraft:hostile,distance=..5] minecraft:weakness 5 2
execute positioned ^ ^1 ^3 run effect give @e[type=#minecraft:hostile,distance=..5] minecraft:mining_fatigue 5 2

# Place ice
execute positioned ^ ^1 ^3 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:ice replace water

playsound minecraft:block.glass.break player @a ~ ~ ~ 2 0.5