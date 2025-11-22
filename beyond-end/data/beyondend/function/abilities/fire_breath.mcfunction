# Fire breath attack
particle minecraft:flame ^ ^1 ^3 1 0.5 1 0.1 100
particle minecraft:smoke ^ ^1 ^5 1 0.5 1 0.1 50

# Damage entities in cone
execute positioned ^ ^1 ^3 run effect give @e[type=#minecraft:hostile,distance=..5] minecraft:instant_damage 1 2
execute positioned ^ ^1 ^3 run effect give @e[type=#minecraft:hostile,distance=..5] minecraft:wither 5 1
execute positioned ^ ^1 ^3 as @e[type=#minecraft:hostile,distance=..5] run data merge entity @s {Fire:100s}

playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 0.8
