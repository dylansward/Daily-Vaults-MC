# A debug function that marks the beneath vault for unlocking. It does not actually unlock the vault -- that will happen when the day changes.
tellraw @s [{"text":"INFO: ", "color":"yellow"}, {"text":"Marking the vault you are standing on. It will be unlocked at the beginning of the next day.", "color":"white"}]
execute if block ~ ~-1 ~ minecraft:vault run summon minecraft:marker ~ ~-1 ~ {Tags:["daily_vault.vault_marker"]}
execute unless block ~ ~-1 ~ minecraft:vault run tellraw @s [{"text":"ERROR: You are not standing on a vault", "color":"red"}]