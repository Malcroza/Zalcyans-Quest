#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_gulumar_block run scoreboard objectives add gulumar_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s gulumar_detect 1

#push fog
execute as @a[scores={gulumar_detect=4}] run fog @s push zalcyan:fog_gulumar gulumar

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_gulumar_block run scoreboard players set @a[scores={gulumar_detect=8..}] gulumar_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={gulumar_detect=40..}] run fog @s remove gulumar
execute as @a[scores={gulumar_detect=50..}] run scoreboard objectives remove gulumar_detect