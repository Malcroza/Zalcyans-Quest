#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_ds_city_block run scoreboard objectives add ds_city_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s ds_city_detect 1

#push fog
execute as @a[scores={ds_city_detect=4}] run fog @s push zalcyan:fog_ds_city ds_city

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_ds_city_block run scoreboard players set @a[scores={ds_city_detect=8..}] ds_city_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={ds_city_detect=40..}] run fog @s remove ds_city
execute as @a[scores={ds_city_detect=41..}] run scoreboard objectives remove ds_city_detect