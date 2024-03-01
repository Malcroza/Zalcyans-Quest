#If above block, start scoreboard
execute at @a if block ~ -64 ~ zalcyan:fog_frissania_block run scoreboard objectives add friss_detect dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s friss_detect 1

#push fog
execute as @a[scores={friss_detect=4}] run fog @s push zalcyan:fog_frissania frissania

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_frissania_block run scoreboard players set @a[scores={friss_detect=8..}] friss_detect 8



#remove fog  and remove scoreboard if timer reaches 40

execute as @a[scores={friss_detect=40..}] run fog @s remove frissania
execute as @a[scores={friss_detect=50..}] run scoreboard objectives remove friss_detect


#particle
execute at @a if block ~ -64 ~ zalcyan:fog_frissania_block run scoreboard objectives add friss_particle dummy

#Start scoreboard counting
execute as @a run scoreboard players add @s friss_particle 1

#push fog
execute as @a[scores={friss_particle=4}] at @a run particle zalcyan:friss_wisp ~~~

# reset scoreboard if still standing above block
execute at @a if block ~ -64 ~ zalcyan:fog_frissania_block run scoreboard players set @a[scores={friss_particle=60..}] friss_particle 2

#remove fog  and remove scoreboard if timer reaches 100

execute as @a[scores={friss_particle=100..}] run scoreboard objectives remove friss_particle
