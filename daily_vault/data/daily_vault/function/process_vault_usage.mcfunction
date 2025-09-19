# Function that is called when the player uses a vault. It resets the interaction tracker and starts the raycast.
scoreboard players set @s dv_ray 160
execute anchored eyes run function daily_vault:ray_to_vault
advancement revoke @s only daily_vault:used_vault