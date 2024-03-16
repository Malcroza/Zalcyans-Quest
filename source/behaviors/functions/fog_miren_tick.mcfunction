#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_miren_block run scoreboard objectives add lorzoland_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s lorzoland_detect 1

#push fog
execute as @a[scores={lorzoland_detect=4}] run fog @s push zalcyan:fog_lorzoland lorzoland

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_miren_block run scoreboard players set @a[scores={lorzoland_detect=8..}] lorzoland_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={lorzoland_detect=40..}] run fog @s remove lorzoland
execute as @a[scores={lorzoland_detect=41..}] run scoreboard objectives remove lorzoland_detect