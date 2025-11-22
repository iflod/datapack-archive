# Vampiric Axe - Life steal
execute if entity @s[scores={iw.axe_used=1..}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={iw.axe_used=1..}] run effect give @s minecraft:regeneration 5 1 true

# Drain effect
execute if entity @s[scores={iw.axe_used=1..}] run particle minecraft:soul ~ ~1 ~ 2 1 2 0.05 50
execute if entity @s[scores={iw.axe_used=1..}] run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 0.5 1.5

scoreboard players set @s iw.axe_used 0