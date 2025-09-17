# Lancer la partie
scoreboard players set $state game 1

gamemode survival @a

# Reset chrono
scoreboard players set $chrono chrono_min 0
scoreboard players set $chrono chrono_sec 0
scoreboard players set $time time 0

# Afficher à tous (et la garder à jour en tick)
bossbar set runnerdragon:timer visible true

# Téléporter les équipes
function runnerdragon:tp_teams

# Nettoyer les items de sélection d’équipe au lancement
clear @a minecraft:carrot_on_a_stick

# Message de départ
title @a title {"text":"La course commence !","color":"gold"}
execute as @a at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.7 1.25 1
tellraw @a {"text":"La partie a commencé ! Bonne chance à toutes les équipes !","color":"gold","bold":true}
