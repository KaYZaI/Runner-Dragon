# Prendre un cliché des positions (entiers) de tous les joueurs
execute as @a run execute store result score @s snap_x run data get entity @s Pos[0] 1
execute as @a run execute store result score @s snap_z run data get entity @s Pos[2] 1

# Mémoriser la dimension au tick de victoire (1 = End, 0 = pas End)
execute as @a run scoreboard players set @s in_end 0
execute as @a if dimension minecraft:the_end run scoreboard players set @s in_end 1
