# Si la partie n’a pas encore commencé (state = 0)
execute if score $state game matches 0 run gamemode adventure @a
execute as @a unless score @s hasTeamItems matches 0.. run scoreboard players set @s hasTeamItems 0

# Donner les laines de sélection uniquement si le joueur n'en a pas déjà
execute as @a if score $state game matches 0 if score @s hasTeamItems matches 0 run function runnerdragon:give_team_items

