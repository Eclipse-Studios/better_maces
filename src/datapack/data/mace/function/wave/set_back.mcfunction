# Test:
# say a

# Kill Falling block
kill @n[type=item,tag=mace.ride]
kill @n[type=falling_block,tag=mace.blank]

# Set block (we set it and not let it fall if the block below is air so it places where it started):
$setblock ~ ~ ~ $(Name)

# Kill armor stand:
kill @s
