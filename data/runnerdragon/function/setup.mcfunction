# Setup au chargement du datapack
scoreboard objectives add game dummy
scoreboard objectives add hasTeamItems dummy

# Scores pour le chrono
scoreboard objectives add time dummy
scoreboard objectives add chrono_sec dummy
scoreboard objectives add chrono_min dummy

# Créer la bossbar (une seule fois au setup)
bossbar add runnerdragon:timer "00:00"
bossbar set runnerdragon:timer style progress
bossbar set runnerdragon:timer color purple
bossbar set runnerdragon:timer max 60
bossbar set runnerdragon:timer value 0
bossbar set runnerdragon:timer visible false

# Coordonnées Portail de l'End
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

# Références portail (globales)
scoreboard objectives add portal_x dummy
scoreboard objectives add portal_z dummy
scoreboard players set portal portal_x 0
scoreboard players set portal portal_z 0

# Temp calcul distance
scoreboard objectives add team_id dummy
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dz dummy
scoreboard objectives add temp dummy
scoreboard objectives add dist2 dummy

# Classement (affiché en sidebar)
scoreboard objectives add rank dummy
scoreboard objectives modify rank displayname {"text":"Progression vers l'End (↑ = plus proche)","color":"dark_purple","bold":true}

# Valeur par défaut : partie non démarrée
scoreboard players set $state game 0
scoreboard players set @a hasTeamItems 0

# Config du dragon
scoreboard objectives add dragon_cfg dummy
scoreboard players set rd_explode_block dragon_cfg 0
scoreboard players set rd_hp dragon_cfg 200

# Création des équipes (sans couleur ni nom pour l’instant)
team add rouge
team add bleu
team add vert
team add jaune
team add magenta
team add cyan

# Config des équipes
function runnerdragon:teams_configs

# Un seul objectif pour TOUTES les carottes spéciales
scoreboard objectives add team_select minecraft.used:minecraft.carrot_on_a_stick

# Mettre tous les joueurs actuels en Adventure (phase d’attente)
gamemode adventure @a