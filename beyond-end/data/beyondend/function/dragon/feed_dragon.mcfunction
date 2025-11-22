# Find nearby tamed dragon
execute as @e[type=ender_dragon,tag=be.tamed,distance=..5,limit=1] run scoreboard players add @s be.hunger 200

# Healing effect
execute as @e[type=ender_dragon,tag=be.tamed,distance=..5,limit=1] run effect give @s minecraft:instant_health 1 1

# Particles
particle minecraft:happy_villager ~ ~2 ~ 0.5 0.5 0.5 0 10
playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1

# Decrease item
execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand count

# Taming progress if not fully tamed
execute as @e[type=ender_dragon,tag=be.tamed,tag=!be.fully_tamed,distance=..5,limit=1] run function beyond_end:dragon/tame_dragon