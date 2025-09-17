# Quitter d'abord toute équipe
team leave @s

# Rejoindre l'équipe rouge
team join rouge @s

# Marquer l'ID d'équipe (propre au classement)
scoreboard players set @s team_id 1

# Message de confirmation
tellraw @s {"text":"Tu as rejoint l'équipe ROUGE !","color":"red"}
