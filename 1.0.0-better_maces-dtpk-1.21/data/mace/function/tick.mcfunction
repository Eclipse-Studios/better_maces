# Control timer of waves:
execute as @e[tag=mace.start_point] at @s positioned ~ ~-1 ~ run function mace:wave/timer

# Set back the block:
execute as @e[tag=mace.true_final_point] at @s if entity @n[type=falling_block,tag=mace.blank,distance=..0.25] run function mace:wave/set_back with entity @n[type=falling_block,tag=mace.blank,distance=..0.25] BlockState
execute as @e[type=item,tag=mace.ride,nbt={OnGround:1b}] at @s unless block ~ ~-0.01 ~ air run function mace:wave/set_back with entity @n[type=falling_block,tag=mace.blank] BlockState

# Kill armor stands if they didn't die properly:
execute as @e[tag=mace.true_final_point] at @s run function mace:wave/kill

# Add tag when the falling block exited the armor stand:
execute as @e[tag=mace.final_point,tag=!mace.true_final_point] at @s unless entity @n[type=item,tag=mace.ride,distance=..0.25] run tag @s add mace.true_final_point

# Add custom enchantment to all maces:
execute as @a if items entity @s[predicate=mace:hold] weapon.mainhand *[!enchantments~[{enchantments:"mace:hit",levels:1}]] run item modify entity @s weapon.mainhand mace:enchant
execute as @a if items entity @s[predicate=mace:hold_] weapon.mainhand *[enchantments~[{enchantments:"mace:hit",levels:1}]] run function mace:wave/enchant
