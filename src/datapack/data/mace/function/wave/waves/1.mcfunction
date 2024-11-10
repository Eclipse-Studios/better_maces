# Test:
# say 1

# Summon armor stands:
execute unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["mace.final_point"],DisabledSlots:4144959}
execute positioned ~ ~ ~1 unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["mace.final_point"],DisabledSlots:4144959}
execute positioned ~ ~ ~-1 unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["mace.final_point"],DisabledSlots:4144959}
execute positioned ~1 ~ ~ unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["mace.final_point"],DisabledSlots:4144959}
execute positioned ~-1 ~ ~ unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["mace.final_point"],DisabledSlots:4144959}

# Summon falling blocks:
function mace:wave/waves/lift
