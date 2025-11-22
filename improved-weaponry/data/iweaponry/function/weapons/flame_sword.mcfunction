# Dragon Slayer - Flame Sword Ability
execute if entity @s[scores={iw.sword_used=1..}] run scoreboard players set @s iw.cooldown 60

# Fire damage to nearby enemies
execute if entity @s[scores={iw.sword_used=1..}] as @e[type=#minecraft:hostile,distance=..8] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @s[scores={iw.sword_used=1..}] as @e[type=#minecraft:hostile,distance=..8] run effect give @s minecraft:wither 5 0 true

# Visual effects
execute if entity @s[scores={iw.sword_used=1..}] run particle flame ~ ~1 ~ 2 1 2 0.1 100
execute if entity @s[scores={iw.sword_used=1..}] run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8

# Reset usage
scoreboard players set @s iw.sword_used 0