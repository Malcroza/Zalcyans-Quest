scoreboard objectives add zalhellos dummy
scoreboard players add @a[tag=!zalhello] zalhellos 1
tellraw @a [scores={zalhellos=200},tag=!zalhello] {"rawtext":[{"translate":"zalhello.msg1","with":{"rawtext":[{ "selector" : "@p" }]}}]}
tellraw @a [scores={zalhellos=250},tag=!zalhello] {"rawtext":[{"translate":"zalhello.msg2","with":{"rawtext":[{ "selector" : "@p" }]}}]}
tellraw @a [scores={zalhellos=350},tag=!zalhello] {"rawtext":[{"translate":"zalhello.msg3","with":{"rawtext":[{ "selector" : "@p" }]}}]}
tellraw @a [scores={zalhellos=450},tag=!zalhello] {"rawtext":[{"translate":"zalhello.msg4","with":{"rawtext":[{ "selector" : "@p" }]}}]}
tag @a [tag=!zalhello,scores={zalhellos=500}] add zalhello
scoreboard players set @a[scores={zalhellos=501}] zalhellos 0
