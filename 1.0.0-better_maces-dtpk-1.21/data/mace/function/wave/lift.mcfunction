# Test 1:
# say lift
# $say $(Name)

# Reset:
data remove storage mace:temp values

# Get block id:
data modify storage mace:temp values.id set from entity @s ArmorItems[3].id

# Get random Y motion:
execute store result storage mace:temp values.motion double 0.001 run random value 300..325

# Summon falling block:
function mace:wave/set with storage mace:temp values

# Clear block + tag:
item replace entity @s armor.head with air
setblock ~ ~ ~ air
tag @s add mace.lifted

# Check if ~ ~ ~ has a block up and if so lift it up too:
execute positioned ~ ~1 ~ unless block ~ ~ ~ air run loot replace entity @s armor.head mine ~ ~ ~ netherite_pickaxe[enchantments={levels:{"minecraft:silk_touch":1}}]
execute positioned ~ ~1 ~ unless block ~ ~ ~ air if predicate mace:head run function mace:wave/up

# Test 2:
# tellraw @a {"nbt":"inBlockState","entity":"@n[type=arrow,tag=mace.scan]","color":"blue"}
# kill @n[type=arrow,tag=mace.scan]
# setblock ~ ~ ~ air 
