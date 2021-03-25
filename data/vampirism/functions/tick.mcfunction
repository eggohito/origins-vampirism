#> vampirism:tick
#
#   > The main tick function for the `vampirism` namespace
#
#@within
#   function vampirism:load
#   function vampirism:tick


# Check if the '%temporal_morphing' variable is changed
execute unless score #temporal_morphing vmp.main = %temporal_morphing vmp.main as @a run scoreboard players operation @s vmp.stamina = %max_stamina vmp.main

scoreboard players operation #temporal_morphing vmp.main = %temporal_morphing vmp.main


# Check if a player is in a human, or bat form
execute if score %temporal_morphing vmp.main matches 1 as @a[tag = vmp.metamorph.form.human] unless score @s vmp.stamina = %max_stamina vmp.main run function vampirism:metamorph/form/human

execute if score %temporal_morphing vmp.main matches 1 as @a[tag = vmp.metamorph.form.bat] unless score @s vmp.stamina matches 0 run function vampirism:metamorph/form/bat

execute as @a if score @s vmp.stamina > %max_stamina vmp.main run scoreboard players operation @s vmp.stamina = %max_stamina vmp.main


# Loop this function
schedule function vampirism:tick 1t