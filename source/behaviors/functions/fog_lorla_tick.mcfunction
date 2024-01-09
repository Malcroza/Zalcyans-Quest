#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_lorla_block run scoreboard objectives add lorla_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s lorla_detect 1

#push fog
execute as @a[scores={lorla_detect=4}] run fog @s push zalcyan:fog_lorla lorla

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_lorla_block run scoreboard players set @a[scores={lorla_detect=8..}] lorla_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={lorla_detect=40..}] run fog @s remove lorla
execute as @a[scores={lorla_detect=50..}] run scoreboard objectives remove lorla_detect