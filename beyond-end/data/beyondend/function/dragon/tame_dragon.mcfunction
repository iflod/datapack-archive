# Taming requires feeding multiple times
scoreboard players add @s be.tame_level 1

# Taming particles
particle minecraft:heart ~ ~2 ~ 0.5 0.5 0.5 0 5

# Fully tamed at level 10
execute if score @s be.tame_level matches 10.. run tag @s add be.fully_tamed
execute if score @s be.tame_level matches 10.. run tellraw @a[distance=..10] ["",{"text":"[Beyond-End] ","color":"dark_purple","bold":true},{"text":"Dragon is now fully tamed!","color":"green"}]