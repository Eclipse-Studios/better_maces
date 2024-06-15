# say enchant

# Check if has multiple enchantments:
execute store result score @s mace.enchantments run data get entity @s SelectedItem.components."minecraft:enchantments".levels

# If so, disable glint:
execute if score @s mace.enchantments matches 2.. run item modify entity @s weapon.mainhand mace:glint
