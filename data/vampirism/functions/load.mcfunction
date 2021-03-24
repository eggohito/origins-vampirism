#> vampirism:load
#
#   > The main load function for the `vampirism` namespace
#
#@within tag/function minecraft:load


# Add scoreboard objectives
# scoreboard objectives add vmp.main dummy


# Load message
tellraw @a[tag = vmp.debug] {"text": "[+ Loaded \"Vampirism\"]", "color": "green", "italic": false, "hoverEvent": {"action": "show_text", "contents": {"text": "Version 1.0.0"}}}