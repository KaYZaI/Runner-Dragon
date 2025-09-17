# S'assurer que la bossbar est visible pendant la partie
bossbar set runnerdragon:timer visible true

# +1 tick
scoreboard players add $time time 1

# Toutes les 20 ticks -> +1 seconde
execute if score $time time matches 20 run scoreboard players add $chrono chrono_sec 1
execute if score $time time matches 20 run scoreboard players set $time time 0

# Passage à la minute suivante
execute if score $chrono chrono_sec matches 60 run scoreboard players add $chrono chrono_min 1
execute if score $chrono chrono_sec matches 60 run scoreboard players set $chrono chrono_sec 0

# Mettre la barre à l'échelle des 60 secondes (progression de la minute)
bossbar set runnerdragon:timer max 60
execute store result bossbar runnerdragon:timer value run scoreboard players get $chrono chrono_sec

# Mettre le nom (MM:SS) avec padding sur les secondes
execute if score $chrono chrono_sec matches ..9 run bossbar set runnerdragon:timer name {"text":"","extra":[{"text":"⏱ Minecraft : Runner Dragon — ","color":"dark_purple","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"light_purple","bold":true},{"text":":","bold":true},{"text":"0","color":"light_purple","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"light_purple","bold":true}]}
execute if score $chrono chrono_sec matches 10.. run bossbar set runnerdragon:timer name {"text":"","extra":[{"text":"⏱ Minecraft : Runner Dragon — ","color":"dark_purple","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"light_purple","bold":true},{"text":":","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"light_purple","bold":true}]}
