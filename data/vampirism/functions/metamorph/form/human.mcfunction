#> vampirism:metamorph/form/human
#
#   > Increase the stamina value by 1 every second
#
#@within function vampirism:tick


scoreboard players add @s vmp.t1 1

execute if score @s vmp.t1 matches 21.. run scoreboard players add @s vmp.stamina 1

execute if score @s vmp.t1 matches 21.. run scoreboard players reset @s vmp.t1