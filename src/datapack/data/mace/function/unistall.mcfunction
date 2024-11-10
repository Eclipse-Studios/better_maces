tellraw @s ["",{"text":"[MACE] ","color":"yellow"},{"text":"Unistalling datapack...","color":"yellow"}]

scoreboard objectives remove mace.timer
scoreboard objectives remove mace.enchantments

playsound minecraft:entity.player.levelup ambient @s
tellraw @s ["",{"text":"[MACE] ","color":"yellow"},{"text":"Datapack unistalled succesfully!","color":"green"}]
tellraw @s ["",{"text":"[MACE] ","color":"yellow"},{"text":"Thanks for using it!","color":"gold"}]