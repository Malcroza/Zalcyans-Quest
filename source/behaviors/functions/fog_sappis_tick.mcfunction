#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_sappis_block run scoreboard objectives add sappis_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s sappis_detect 1

#push fog
execute as @a[scores={sappis_detect=4}] run fog @s push zalcyan:fog_sappis sappis

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_sappis_block run scoreboard players set @a[scores={sappis_detect=8..}] sappis_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={sappis_detect=40..}] run fog @s remove sappis
execute as @a[scores={sappis_detect=41..}] run scoreboard objectives remove sappis_detect