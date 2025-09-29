# Timer:
scoreboard players add @s mace.timer 1

# Waves:
execute if score @s mace.timer matches 3 run function mace:wave/waves/1
execute if score @s mace.timer matches 5 run function mace:wave/waves/2
execute if score @s mace.timer matches 7 run function mace:wave/waves/3

# Kill:
execute if score @s mace.timer matches 7 run kill @s
