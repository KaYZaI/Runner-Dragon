# runnerdragon:rank/compute

# Afficher la sidebar du classement
scoreboard objectives setdisplay sidebar rank

# 1) Capturer X/Z entiers de tous les joueurs
execute as @a run execute store result score @s pos_x run data get entity @s Pos[0] 1
execute as @a run execute store result score @s pos_z run data get entity @s Pos[2] 1

# 2) dx = pos_x ; dz = pos_z
execute as @a run scoreboard players operation @s dx = @s pos_x
execute as @a run scoreboard players operation @s dz = @s pos_z

# 2b) Si le joueur N'EST PAS dans l'End -> soustraire la référence portail (Overworld)
execute as @a unless dimension minecraft:the_end run scoreboard players operation @s dx -= portal portal_x
execute as @a unless dimension minecraft:the_end run scoreboard players operation @s dz -= portal portal_z

# 3) dist2 = dx*dx + dz*dz
execute as @a run scoreboard players operation @s dist2 = @s dx
execute as @a run scoreboard players operation @s dist2 *= @s dx
execute as @a run scoreboard players operation @s temp = @s dz
execute as @a run scoreboard players operation @s temp *= @s dz
execute as @a run scoreboard players operation @s dist2 += @s temp

# 4) Initialiser le "min" par équipe (valeur très grande)
scoreboard players set team_rouge dist2 2147483647
scoreboard players set team_bleu dist2 2147483647
scoreboard players set team_vert dist2 2147483647
scoreboard players set team_jaune dist2 2147483647
scoreboard players set team_magenta dist2 2147483647
scoreboard players set team_cyan dist2 2147483647

# 4b) Pour chaque joueur -> si @s est plus proche que le min courant, on remplace (via team_id)
execute as @a if score @s team_id matches 1 if score @s dist2 < team_rouge dist2 run scoreboard players operation team_rouge dist2 = @s dist2
execute as @a if score @s team_id matches 2 if score @s dist2 < team_bleu dist2 run scoreboard players operation team_bleu dist2 = @s dist2
execute as @a if score @s team_id matches 3 if score @s dist2 < team_vert dist2 run scoreboard players operation team_vert dist2 = @s dist2
execute as @a if score @s team_id matches 4 if score @s dist2 < team_jaune dist2 run scoreboard players operation team_jaune dist2 = @s dist2
execute as @a if score @s team_id matches 5 if score @s dist2 < team_magenta dist2 run scoreboard players operation team_magenta dist2 = @s dist2
execute as @a if score @s team_id matches 6 if score @s dist2 < team_cyan dist2 run scoreboard players operation team_cyan dist2 = @s dist2

# 4c) Équipes vides -> grosse pénalité (pour finir en bas du classement)
execute if score team_rouge dist2 matches 2147483647 run scoreboard players set team_rouge dist2 2000000000
execute if score team_bleu dist2 matches 2147483647 run scoreboard players set team_bleu dist2 2000000000
execute if score team_vert dist2 matches 2147483647 run scoreboard players set team_vert dist2 2000000000
execute if score team_jaune dist2 matches 2147483647 run scoreboard players set team_jaune dist2 2000000000
execute if score team_magenta dist2 matches 2147483647 run scoreboard players set team_magenta dist2 2000000000
execute if score team_cyan dist2 matches 2147483647 run scoreboard players set team_cyan dist2 2000000000

# 5) Inverser pour trier "plus proche = plus haut" (la sidebar trie du plus grand au plus petit)
scoreboard players set "Rouge" rank 2000000000
scoreboard players operation "Rouge" rank -= team_rouge dist2
scoreboard players set "Bleu" rank 2000000000
scoreboard players operation "Bleu" rank -= team_bleu dist2
scoreboard players set "Vert" rank 2000000000
scoreboard players operation "Vert" rank -= team_vert dist2
scoreboard players set "Jaune" rank 2000000000
scoreboard players operation "Jaune" rank -= team_jaune dist2
scoreboard players set "Magenta" rank 2000000000
scoreboard players operation "Magenta" rank -= team_magenta dist2
scoreboard players set "Cyan" rank 2000000000
scoreboard players operation "Cyan" rank -= team_cyan dist2

# 6) Laisser visible 10s puis masquer
tellraw @a {"text":"Classement (hors vainqueur) affiché à droite.","color":"dark_purple"}
