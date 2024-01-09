#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_quag_block run scoreboard objectives add qua_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s qua_detect 1

#push fog
execute as @a[scores={qua_detect=4}] run fog @s push zalcyan:fog_quag quag

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_quag_block run scoreboard players set @a[scores={qua_detect=8..}] qua_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={qua_detect=40..}] run fog @s remove quag
execute as @a[scores={qua_detect=50..}] run scoreboard objectives remove qua_detect