#> vampirism:metamorph/power
#
#   > Toggle the form of the vampire
#
#@within function vampirism:metamorph/form/bat


# Remove the tags, and the score of the player
tag @s remove vmp.metamorph.form.bat

tag @s remove vmp.metamorph.form.human

scoreboard players reset @s vmp.t1


# Toggle the scoreboard
execute store success score @s vmp.toggle if score @s vmp.toggle matches 0


# Add tags respective to the value of the toggle objective
execute if score @s vmp.toggle matches 1 run tag @s add vmp.metamorph.form.bat

execute if score @s vmp.toggle matches 0 run tag @s add vmp.metamorph.form.human