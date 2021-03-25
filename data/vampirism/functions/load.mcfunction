#> vampirism:load
#
#   > The main load function for the `vampirism` namespace
#
#@within tag/function minecraft:load


# Add scoreboard objectives
scoreboard objectives add vmp.t1 dummy

scoreboard objectives add vmp.main dummy

scoreboard objectives add vmp.toggle dummy

scoreboard objectives add vmp.stamina dummy


# Load message
tellraw @a[tag = vmp.debug] {"text": "[+ Loaded \"Vampirism\"]", "color": "green", "italic": false, "hoverEvent": {"action": "show_text", "contents": {"text": "Version 1.1.0"}}}


# Set variables/constants
execute unless score #load vmp.main = #load vmp.main run function vampirism:.cfg/default

scoreboard players operation #temporal_morphing vmp.main = %temporal_morphing vmp.main

scoreboard players set #load vmp.main 1


# (Re)initialize tick function
schedule function vampirism:tick 1t replace