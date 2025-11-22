# Egg incubation system
execute as @e[type=armor_stand,tag=be.dragon_egg] at @s run function beyond_end:dragon/egg_incubation

# Baby dragon growth
execute as @e[type=armor_stand,tag=be.baby_dragon] at @s run function beyond_end:dragon/baby_dragon

# Adult dragon AI
execute as @e[type=ender_dragon,tag=be.tamed] at @s run function beyond_end:dragon/dragon_ai

# Flying controls for riders
execute as @a[scores={be.flying=1..}] at @s run function beyond_end:riding/fly_controls

# Dragon hunger system
execute as @e[type=ender_dragon,tag=be.tamed] run scoreboard players remove @s be.hunger 1

# Feed dragons
execute as @a[scores={be.feed=1..}] at @s run function beyond_end:dragon/feed_dragon

# Mount/dismount
execute as @a[scores={be.mount=1..}] at @s run function beyond_end:riding/mount_dragon

# Breath attack cooldown
scoreboard players remove @a[scores={be.breath_cd=1..}] be.breath_cd 1

# Reset scores
scoreboard players set @a[scores={be.feed=1..}] be.feed 0
scoreboard players set @a[scores={be.mount=1..}] be.mount 0
