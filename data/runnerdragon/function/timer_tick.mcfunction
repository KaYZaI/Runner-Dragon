# Attacher la bossbar à tous les joueurs (au cas où il y ait des nouveaux)
bossbar set runnerdragon:timer players @a

# Si la partie est en cours, on met à jour; sinon on cache
execute if score $state game matches 1 run function runnerdragon:internal/timer_update

# Si la partie est finie (state=2) → garder visible, ne pas incrémenter
execute if score $state game matches 2 run bossbar set runnerdragon:timer visible true

# Si on est en lobby (state=0) ou autre → cacher
execute unless score $state game matches 1..2 run bossbar set runnerdragon:timer visible false
