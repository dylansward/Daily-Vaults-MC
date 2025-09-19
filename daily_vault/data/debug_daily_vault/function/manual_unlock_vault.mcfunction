# A debug function that unlocks the vault being stood upon.
tellraw @s [{"text":"INFO: ", "color":"yellow"}, {"text":"Unlocking the vault you are standing on. This also removes its marking.", "color":"white"}]
execute if block ~ ~-1 ~ minecraft:vault run data remove block ~ ~-1 ~ server_data.rewarded_players
execute if block ~ ~-1 ~ minecraft:vault run kill @e[tag=daily_vault.vault_marker, distance=0.75..1.25]
execute unless block ~ ~-1 ~ minecraft:vault run tellraw @s [{"text":"ERROR: You are not standing on a vault", "color":"red"}]