# Sistema wireless per redstone
scoreboard players add @s rt.timer 1

# Trova ricevitori nel range
execute if score @s rt.timer matches 1 run scoreboard players set @s rt.range 32

# Attiva ricevitori entro il range
execute as @e[type=armor_stand,tag=rt.receiver,distance=..32] run setblock ~ ~ ~ redstone_block

# Reset timer
execute if score @s rt.timer matches 20.. run scoreboard players set @s rt.timer 0