# Weapon abilities tick
execute as @a[nbt={SelectedItem:{tag:{iw_dragon_slayer:1b}}}] at @s run function improved_weaponry:weapons/flame_sword
execute as @a[nbt={SelectedItem:{tag:{iw_void_reaper:1b}}}] at @s run function improved_weaponry:weapons/soul_scythe
execute as @a[nbt={SelectedItem:{tag:{iw_frost_blade:1b}}}] at @s run function improved_weaponry:weapons/frost_blade
execute as @a[nbt={SelectedItem:{tag:{iw_vampiric_axe:1b}}}] at @s run function improved_weaponry:weapons/vampiric_axe

# Explosive arrows
execute as @e[type=arrow,tag=iw_explosive] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 3
execute as @e[type=arrow,tag=iw_explosive,nbt={inGround:1b}] at @s run function improved_weaponry:weapons/explosive_arrow

# Lightning trident
execute as @e[type=trident,tag=iw_lightning] at @s run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0.1 5

# Cooldown management
scoreboard players remove @a[scores={iw.cooldown=1..}] iw.cooldown 1

# Bleed effect
execute as @a[scores={iw.damage=1..}] at @s run function improved_weaponry:effects/bleed_damage
