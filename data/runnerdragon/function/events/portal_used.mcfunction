# Capturer la position (entiers) du joueur au moment d'entrer dans le portail
execute store result score @s pos_x run data get entity @s Pos[0] 1
execute store result score @s pos_y run data get entity @s Pos[1] 1
execute store result score @s pos_z run data get entity @s Pos[2] 1

# Enregistrer la position du portail utilisé comme référence globale
execute store result score $portal_x portal_x run data get entity @s Pos[0] 1
execute store result score $portal_z portal_z run data get entity @s Pos[2] 1

# Annoncer à tout le monde (le nom prend la couleur de l'équipe)
tellraw @a [{"text":"[Portail de l'End] ","color":"dark_purple","bold":true},{"selector":"@s"},{"text":" a utilisé un portail à ","color":"gray"},{"score":{"name":"@s","objective":"pos_x"}},{"text":" "},{"score":{"name":"@s","objective":"pos_y"}},{"text":" "},{"score":{"name":"@s","objective":"pos_z"}}]

# (Optionnel) petit son repérable pour tout le monde
execute as @a at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 1
