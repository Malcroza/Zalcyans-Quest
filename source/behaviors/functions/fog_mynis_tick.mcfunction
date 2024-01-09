#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_mynis_block run scoreboard objectives add mynis_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s mynis_detect 1

#push fog
execute as @a[scores={mynis_detect=4}] run fog @s push zalcyan:fog_mynis mynis

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_mynis_block run scoreboard players set @a[scores={mynis_detect=8..}] mynis_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={mynis_detect=40..}] run fog @s remove mynis
execute as @a[scores={mynis_detect=50..}] run scoreboard objectives remove mynis_detect
