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


#particle
execute at @a if block ~ -64 ~ zalcyan:fog_lorla_block run scoreboard objectives add lorla_particle dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s lorla_particle 1

#particle place
execute as @a[scores={lorla_particle=20}] at @a run particle zalcyan:smoke_base ~~~
execute as @a[scores={lorla_particle=20}] at @a run particle zalcyan:lor_ash ~~~

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_lorla_block run scoreboard players set @a[scores={lorla_particle=104..}] lorla_particle 4

#remove fog  and remove scoreboard if timer reaches 120

execute as @a[scores={lorla_particle=120..}] run scoreboard objectives remove lorla_particle