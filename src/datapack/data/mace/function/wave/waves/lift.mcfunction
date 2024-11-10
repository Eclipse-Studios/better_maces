# Check if block ~ ~ ~ can be lifted (mined):
execute as @e[tag=mace.final_point,tag=!mace.lifted] at @s run loot replace entity @s armor.head mine ~ ~ ~ netherite_pickaxe[enchantments={levels:{"minecraft:silk_touch":1}}]
execute as @e[tag=mace.final_point,tag=!mace.lifted] at @s if predicate mace:head run function mace:wave/lift

# Playsound:
playsound minecraft:entity.iron_golem.damage block @a ~ ~ ~ 1 0
