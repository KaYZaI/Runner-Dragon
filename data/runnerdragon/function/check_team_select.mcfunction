# Quand un joueur utilise une carotte spéciale
execute as @a[scores={team_select=1..}] at @s run function runnerdragon:check_team_item
scoreboard players set @a[scores={team_select=1..}] team_select 0
