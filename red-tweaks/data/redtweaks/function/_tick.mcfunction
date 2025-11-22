# Controllo segnali wireless ogni tick
execute as @e[type=armor_stand,tag=rt.transmitter] at @s run function red_tweaks:redstone/wireless_signal

# Boost repeater
execute as @a[nbt={SelectedItem:{tag:{rt_repeater_boost:1b}}}] at @s run function red_tweaks:redstone/repeater_boost

# Analisi circuiti
execute as @a[nbt={SelectedItem:{tag:{rt_analyzer:1b}}}] at @s run function red_tweaks:redstone/signal_strength
