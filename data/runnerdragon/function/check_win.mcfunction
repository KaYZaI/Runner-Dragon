# Ne déclencher la victoire QUE si la partie est en cours
execute if score $state game matches 1 if entity @a[advancements={minecraft:end/kill_dragon=true}] run function runnerdragon:win
