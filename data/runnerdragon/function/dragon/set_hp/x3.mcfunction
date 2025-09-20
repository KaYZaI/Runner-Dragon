scoreboard players set rd_hp dragon_cfg 600
function runnerdragon:dragon/apply_hp_now

# Annonce (sans tableau JSON)
tellraw @a {"text":"[Runner Dragon] PV du Dragon réglés à ","color":"light_purple","bold":true,"extra":[{"score":{"name":"rd_hp","objective":"dragon_cfg"},"color":"gold"},{"text":" PV","color":"light_purple","bold":true}]}
playsound minecraft:block.enchantment_table.use master @a