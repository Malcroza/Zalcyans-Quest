#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_moonlen_block run scoreboard objectives add moonlen_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s moonlen_detect 1

#push fog
execute as @a[scores={moonlen_detect=4}] run fog @s push zalcyan:fog_moonlen moonlen

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_moonlen_block run scoreboard players set @a[scores={moonlen_detect=8..}] moonlen_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={moonlen_detect=40..}] run fog @s remove moonlen
execute as @a[scores={moonlen_detect=41..}] run scoreboard objectives remove moonlen_detect