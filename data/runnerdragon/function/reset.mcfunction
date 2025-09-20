# =========================
# Runner Dragon — RESET
# =========================

tellraw @a {"text":"[Runner Dragon] Réinitialisation en cours...","color":"yellow"}

# 1) Stopper planifs / affichages
schedule clear runnerdragon:rank/hide
scoreboard objectives setdisplay sidebar
bossbar set runnerdragon:timer visible false
bossbar set runnerdragon:header visible false

# 2) Bossbars (remise à zéro visuelle)
bossbar set runnerdragon:timer name "00:00"
bossbar set runnerdragon:timer value 0
bossbar set runnerdragon:timer max 60
bossbar set runnerdragon:timer color purple
bossbar set runnerdragon:timer style progress

bossbar set runnerdragon:header name {"text":"Minecraft : Runner Dragon","color":"dark_purple","bold":true}
bossbar set runnerdragon:header value 20
bossbar set runnerdragon:header max 20
bossbar set runnerdragon:header color purple
bossbar set runnerdragon:header style progress

# 3) État de jeu, inventaires, modes
scoreboard players set $state game 0
clear @a
gamemode adventure @a

# 4) Teams / tags (on garde les teams créées et leur config)
team leave @a
tag @a remove team_rouge
tag @a remove team_bleu
tag @a remove team_vert
tag @a remove team_jaune
tag @a remove team_magenta
tag @a remove team_cyan

# 5) Remettre le lobby à redonner les items
scoreboard players set @a hasTeamItems 0
scoreboard players reset @a team_id

# 6) OBJECTIFS TECHNIQUES — on supprime puis on recrée pour repartir propre

# (a) Classement
scoreboard objectives remove rank
scoreboard objectives add rank dummy
scoreboard objectives modify rank displayname {"text":"Progression vers l'End (↑ = plus proche)","color":"dark_purple","bold":true}

# (b) Distances / calculs
scoreboard objectives remove pos_x
scoreboard objectives add pos_x dummy
scoreboard objectives remove pos_z
scoreboard objectives add pos_z dummy
scoreboard objectives remove dx
scoreboard objectives add dx dummy
scoreboard objectives remove dz
scoreboard objectives add dz dummy
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard objectives remove dist2
scoreboard objectives add dist2 dummy

# (c) Chrono (si tu les utilises)
scoreboard objectives remove chrono_sec
scoreboard objectives add chrono_sec dummy
scoreboard objectives remove chrono_min
scoreboard objectives add chrono_min dummy

# (e) Portail de référence
scoreboard objectives remove portal_x
scoreboard objectives add portal_x dummy
scoreboard objectives remove portal_z
scoreboard objectives add portal_z dummy
scoreboard players set portal portal_x 0
scoreboard players set portal portal_z 0

# 7) Config du dragon
scoreboard players set rd_explode_block dragon_cfg 0
scoreboard players set rd_hp dragon_cfg 200

# 8) Réappliquer la config des équipes (couleurs, friendlyFire, collisions)
function runnerdragon:teams_configs

tellraw @a {"text":"[Runner Dragon] Reset terminé. Choisissez une équipe !","color":"green","bold":true}
