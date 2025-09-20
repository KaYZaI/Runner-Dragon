# BLEU
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=bleu] run title @a title {"text":"Victoire de l'équipe BLEUE !","color":"blue"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=bleu] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe BLEUE qui a vaincu le dragon en ","color":"blue","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"blue","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=bleu] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe BLEUE qui a vaincu le dragon en ","color":"blue","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"blue","bold":true}]}

# ROUGE
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=rouge] run title @a title {"text":"Victoire de l'équipe ROUGE !","color":"red"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=rouge] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe ROUGE qui a vaincu le dragon en ","color":"red","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"red","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=rouge] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe ROUGE qui a vaincu le dragon en ","color":"red","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"red","bold":true}]}

# VERT
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=vert] run title @a title {"text":"Victoire de l'équipe VERTE !","color":"green"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=vert] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe VERTE qui a vaincu le dragon en ","color":"green","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"green","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=vert] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe VERTE qui a vaincu le dragon en ","color":"green","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"green","bold":true}]}

# JAUNE
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=jaune] run title @a title {"text":"Victoire de l'équipe JAUNE !","color":"yellow"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=jaune] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe JAUNE qui a vaincu le dragon en ","color":"yellow","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"yellow","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=jaune] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe JAUNE qui a vaincu le dragon en ","color":"yellow","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"yellow","bold":true}]}

# MAGENTA
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=magenta] run title @a title {"text":"Victoire de l'équipe MAGENTA !","color":"light_purple"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=magenta] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe MAGENTA qui a vaincu le dragon en ","color":"light_purple","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"light_purple","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=magenta] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe MAGENTA qui a vaincu le dragon en ","color":"light_purple","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"light_purple","bold":true}]}

# CYAN
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=cyan] run title @a title {"text":"Victoire de l'équipe CYAN !","color":"aqua"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=cyan] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe CYAN qui a vaincu le dragon en ","color":"aqua","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"aqua","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=cyan] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe CYAN qui a vaincu le dragon en ","color":"aqua","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"aqua","bold":true}]}

# ORANGE
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=orange] run title @a title {"text":"Victoire de l'équipe ORANGE !","color":"gold"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=orange] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe ORANGE qui a vaincu le dragon en ","color":"gold","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"gold","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=orange] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe ORANGE qui a vaincu le dragon en ","color":"gold","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"gold","bold":true}]}

# GRIS
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=gris] run title @a title {"text":"Victoire de l'équipe GRISE !","color":"gray"}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=gris] if score $chrono chrono_sec matches ..9 run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe GRISE qui a vaincu le dragon en ","color":"gray","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":0","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"gray","bold":true}]}
execute if score $state game matches 1 as @a[advancements={minecraft:end/kill_dragon=true},limit=1,team=gris] if score $chrono chrono_sec matches 10.. run tellraw @a {"text":"","extra":[{"text":"Victoire de l'équipe GRISE qui a vaincu le dragon en ","color":"gray","bold":true},{"score":{"name":"$chrono","objective":"chrono_min"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"$chrono","objective":"chrono_sec"},"color":"white","bold":true},{"text":" !","color":"gray","bold":true}]}

# 1) Snapshot immédiat (empêche toute triche en spectateur)
function runnerdragon:rank/snapshot

# 2) Calcul + affichage 10s
function runnerdragon:rank/compute

# À mettre AVANT le passage en spectateur et AVANT de mettre $state=2
execute if score $state game matches 1 if entity @a[advancements={minecraft:end/kill_dragon=true}] as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 1 1

# BLEU
execute if score $state game matches 1 as @a[team=bleu] at @s if block ~ ~ ~ air run setblock ~ ~ ~ blue_stained_glass
execute if score $state game matches 1 as @a[team=bleu] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ blue_stained_glass

# ROUGE
execute if score $state game matches 1 as @a[team=rouge] at @s if block ~ ~ ~ air run setblock ~ ~ ~ red_stained_glass
execute if score $state game matches 1 as @a[team=rouge] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ red_stained_glass

# VERT (lime)
execute if score $state game matches 1 as @a[team=vert] at @s if block ~ ~ ~ air run setblock ~ ~ ~ lime_stained_glass
execute if score $state game matches 1 as @a[team=vert] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ lime_stained_glass

# JAUNE
execute if score $state game matches 1 as @a[team=jaune] at @s if block ~ ~ ~ air run setblock ~ ~ ~ yellow_stained_glass
execute if score $state game matches 1 as @a[team=jaune] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ yellow_stained_glass

# MAGENTA
execute if score $state game matches 1 as @a[team=magenta] at @s if block ~ ~ ~ air run setblock ~ ~ ~ magenta_stained_glass
execute if score $state game matches 1 as @a[team=magenta] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ magenta_stained_glass

# CYAN
execute if score $state game matches 1 as @a[team=cyan] at @s if block ~ ~ ~ air run setblock ~ ~ ~ cyan_stained_glass
execute if score $state game matches 1 as @a[team=cyan] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ cyan_stained_glass

# ORANGE
execute if score $state game matches 1 as @a[team=orange] at @s if block ~ ~ ~ air run setblock ~ ~ ~ orange_stained_glass
execute if score $state game matches 1 as @a[team=orange] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ orange_stained_glass

# GRIS
execute if score $state game matches 1 as @a[team=gris] at @s if block ~ ~ ~ air run setblock ~ ~ ~ gray_stained_glass
execute if score $state game matches 1 as @a[team=gris] at @s unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ gray_stained_glass

# COMMUN à toutes les équipes → son + spectateur
execute if score $state game matches 1 if entity @a[advancements={minecraft:end/kill_dragon=true}] run gamemode spectator @a

# Enfin : stopper la partie
execute if score $state game matches 1 run scoreboard players set $state game 2