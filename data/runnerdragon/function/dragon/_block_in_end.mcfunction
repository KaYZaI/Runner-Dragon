# Inventaires — ne cible QUE les joueurs qui sont VRAIMENT dans l’End
execute as @a[gamemode=!creative] at @s if dimension minecraft:the_end run clear @s #minecraft:beds
execute as @a[gamemode=!creative] at @s if dimension minecraft:the_end run clear @s respawn_anchor

# Itère chaque item, vérifie sa dimension, puis tue si c’est un lit/une ancre
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:white_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:orange_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:magenta_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:light_blue_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:yellow_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:lime_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:pink_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:gray_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:light_gray_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:cyan_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:purple_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:blue_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:brown_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:green_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:red_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:black_bed"}} run kill @s
execute as @e[type=item] at @s if dimension minecraft:the_end if data entity @s {Item:{id:"minecraft:respawn_anchor"}} run kill @s
