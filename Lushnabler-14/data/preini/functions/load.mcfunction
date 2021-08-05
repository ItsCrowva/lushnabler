# Load Function. Built for Lushnabler 14
tellraw @a {"text":"Loading Lushnabler","bold":true,"color":"dark_green"}
scoreboard objectives add firthing dummy
execute unless score %USED firthing matches 2.. run scoreboard objectives add lushnabler.reset trigger
execute unless score %USED firthing matches 2.. run tellraw @a {"text":"Execution (1/2) Completed","bold":true,"color":"#C9FFC9"}
scoreboard players enable @a lushnabler.reset
spreadplayers 0 0 10000 50000 under 100 false @a
execute at @a[limit=1] run setworldspawn ~ ~ ~
execute at @a[limit=1] run tellraw @a {"text":"Execution (2/2) Completed","bold":true,"color":"#C9FFC9"}
scoreboard players set %USED firthing 2
schedule function preini:killreset 2400t
tellraw @a ["",{"text":"Lushnabler has loaded successfully.","bold":true,"color":"#C9FFC9"},{"text":"\nPlease Note, If this world wasn't loaded in singleplayer first,\nIssues will arise.\n\nPlease make sure you load this in singleplayer first!\n\nOther than that,","color":"#C9FFC9"},{"text":"\n\n"},{"text":"For any questions or just to say hi, Join the discord server","color":"#9888CE"},{"text":"\n"},{"text":"Click here to join","bold":true,"clickEvent":{"action":"open_url","value":"https://discord.gg/f269Dary9j"}}]