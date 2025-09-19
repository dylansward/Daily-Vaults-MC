# A raycast algorithm that attempts to find the vault.
execute if block ^ ^ ^ minecraft:vault run summon minecraft:marker ^ ^ ^ {Tags:["daily_vault.vault_marker"]}
scoreboard players remove @s dv_ray 1
execute if score @s dv_ray matches 0 run tellraw @s [{"text":"ERROR: ", "color":"red"}, {"text":"Unable to find vault. Please manually mark it by standing ontop of it an running 'function debug_daily_vault:manual_mark_vault'.", "color":"white"}]
execute unless block ^ ^ ^ minecraft:vault unless score @s dv_ray matches 0 positioned ^ ^ ^0.05 run function daily_vault:ray_to_vault