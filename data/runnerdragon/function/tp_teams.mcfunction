# Tous les joueurs (hors spectateur) sont répartis, et regroupés par leur team
# (assure-toi que tout le monde est déjà dans une team)
spreadplayers 0 0 200 1000 true @a[gamemode=!spectator]

# Fixe le respawn individuel de chaque joueur EXACTEMENT où il a été téléporté
execute in minecraft:overworld as @a[gamemode=!spectator] at @s run spawnpoint @s ~ ~ ~