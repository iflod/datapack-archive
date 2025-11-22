# Check cooldown
execute if score @s be.breath_cd matches 1.. run return 0

# Fire breath (press drop key)
execute at @s as @e[type=ender_dragon,tag=be.fire,distance=..2] run function beyond_end:abilities/fire_breath
execute at @s as @e[type=ender_dragon,tag=be.frost,distance=..2] run function beyond_end:abilities/frost_breath
execute at @s as @e[type=ender_dragon,tag=be.lightning,distance=..2] run function beyond_end:abilities/lightning_breath
execute at @s as @e[type=ender_dragon,tag=be.void,distance=..2] run function beyond_end:abilities/void_breath

# Set cooldown (100 ticks = 5 seconds)
scoreboard players set @s be.breath_cd 100