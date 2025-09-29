# Test:
# say a
# $say motion: $(motion)
# $say id: $(id)

# Summon falling block:
$summon falling_block ~ ~0.4 ~ {Motion:[0.0d,$(motion),0.0d],Tags:["mace.up"],Time:1,BlockState:{Name:"$(id)"}}
