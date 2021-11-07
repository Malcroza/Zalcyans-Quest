scoreboard objectives add zalhellos dummy
scoreboard players add @a zalhellos 1
execute @a[scores={zalhellos=200},tag=!zalhello] ~~~ summon zalcyan:zalmessage ~ ~ ~
tag @a [tag=!zalhello,scores={zalhellos=500}] add zalhello
