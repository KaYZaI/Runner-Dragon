# Dès qu’un dragon (non configuré) existe dans l’End, applique la valeur choisie
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,tag=!rd_configured,limit=1] run function runnerdragon:dragon/apply_hp_from_score

# Si l’option est ON, on bloque les lits/ancres dans l’End
execute if score rd_explode_block dragon_cfg matches 1 run function runnerdragon:dragon/block_bed_anchor