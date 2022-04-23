# During game script

## Set dead players to spectator

gamemode spectator @a[scores={Deaths=1}]

## Adds 1 to the counter armor stand

scoreboard players add @e[tag=pvp_timer,type=minecraft:armor_stand] pvpAnnCounter 1

## Notifies all players that pvp is now allowed 

execute if score @e[type=minecraft:armor_stand,tag=pvp_timer,limit=1] pvpAnnCounter matches 24000 run function uhc:announce_pvp_allowed

## Hunger functions

execute store result storage uhc:border width int 1 run worldborder get
execute if data storage uhc:border {width: 64} run function uhc:hunger_strike