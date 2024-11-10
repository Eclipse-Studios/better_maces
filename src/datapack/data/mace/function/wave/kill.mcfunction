# Add score for timer:
scoreboard players add @s mace.timer 1

# Die:
execute if score @s mace.timer matches 100.. run kill @s
