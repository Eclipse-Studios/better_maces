# say up

# Get block id:
data modify storage mace:temp values.id set from entity @s ArmorItems[3].id
# tellraw @a {"nbt":"values","storage":"mace:temp","color":"gold"}

# Summon falling block:
function mace:wave/summon_up with storage mace:temp values

# Clear block + tag:
item replace entity @s armor.head with air
setblock ~ ~ ~ air
tag @s add mace.lifted
