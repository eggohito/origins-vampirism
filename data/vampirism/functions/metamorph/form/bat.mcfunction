#> vampirism:metamorph/form/bat
#
#   > Decrease the stamina value by 1 every second
#
#@within function vampirism:tick


scoreboard players add @s vmp.t1 1

execute if score @s vmp.t1 matches 21.. run scoreboard players remove @s vmp.stamina 1

execute if score @s vmp.t1 matches 21.. run scoreboard players reset @s vmp.t1

execute if score @s vmp.stamina matches 0 run function vampirism:metamorph/power