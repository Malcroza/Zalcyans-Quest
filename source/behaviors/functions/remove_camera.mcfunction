execute as @p[c=1,tag=ship_third_camera] at @p anchored eyes if entity @e[r=5,family=ship] run camera @s set minecraft:free ease 0.9 linear pos ^ ^+7 ^-13 rot ~ ~
execute as @a[tag=ship_third_camera] at @s anchored eyes unless entity @e[r=5,family=ship] run camera @s clear
execute as @a[tag=ship_third_camera] at @s anchored eyes unless entity @e[r=5,family=ship] run tag @s remove ship_third_camera