# Called from: calamity:generator/handler

#>--------------------------------------------------------------------------------------------------
#> Generate status effects which buff your team or debuff the other team
#>--------------------------------------------------------------------------------------------------

# Score the player
scoreboard players operation @a[tag=Buff] captureScore += ScoreForCaptureResource mapRules
scoreboard players operation @a[tag=Debuff] captureScore += ScoreForCaptureResource mapRules

# A player has generated effects for their team. Flag their team so we can process them.
execute if entity @a[team=blue,tag=Buff] run tag @a[team=blue] add Buff
execute if entity @a[team=red,tag=Buff] run tag @a[team=red] add Buff
# Sometimes debuffs come with caveats for the attacking team, so let's flag them as well.
execute if entity @a[team=blue,tag=Debuff] run tag @a[team=red] add GiveDebuff
execute if entity @a[team=blue,tag=Debuff] run tag @a[team=blue] remove GiveDebuff
execute if entity @a[team=red,tag=Debuff] run tag @a[team=blue] add GiveDebuff
execute if entity @a[team=red,tag=Debuff] run tag @a[team=red] remove GiveDebuff

# Buff
execute as @s[tag=Regeneration] run effect give @a[tag=Buff] minecraft:regeneration 45
execute as @s[tag=Resistance] run effect give @a[tag=Buff] minecraft:resistance 45
execute as @s[tag=Strength] run effect give @a[tag=Buff] minecraft:strength 45
execute as @s[tag=Speed] run effect give @a[tag=Buff] minecraft:speed 45 1
execute as @s[tag=Haste] run effect give @a[tag=Buff] minecraft:haste 45 3
tag @a[tag=Buff] add GiveMessage
tag @a[tag=Buff] remove Buff

# Debuff
execute as @s[tag=MiningFatigue] run effect give @a[tag=GiveDebuff] minecraft:mining_fatigue 45 1
execute as @s[tag=Blindness] run effect give @a[tag=GiveDebuff] minecraft:blindness 45
execute as @s[tag=Blindness] run effect give @a[tag=Debuff] minecraft:glowing 45
tag @a[tag=Debuff] add GiveMessageAttack
tag @a[tag=Debuff] remove Debuff
tag @a[tag=GiveDebuff] add GiveMessageDebuffed
tag @a[tag=GiveDebuff] remove GiveDebuff

# Play success sounds
execute as @a[tag=Buff] run playsound minecraft:entity.generic.drink player @s

# Buff messages
execute as @s[tag=Haste] run tellraw @a[tag=GiveMessage] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given.level","with":[{"translate":"effect.minecraft.haste","color": "white"},{"translate":"potion.potency.3","color": "white"},{"text":"45","color": "white"}]}]}
execute as @s[tag=Regeneration] run tellraw @a[tag=GiveMessage] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given","with":[{"translate":"effect.minecraft.regeneration","color": "white"},{"text":"45","color": "white"}]}]}
execute as @s[tag=Resistance] run tellraw @a[tag=GiveMessage] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given","with":[{"translate":"effect.minecraft.resistance","color": "white"},{"translate":"potion.potency.1","color": "white"},{"text":"45","color": "white"}]}]}
execute as @s[tag=Speed] run tellraw @a[tag=GiveMessage] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given.level","with":[{"translate":"effect.minecraft.speed","color": "white"},{"translate":"potion.potency.1","color": "white"},{"text":"45","color": "white"}]}]}
execute as @s[tag=Strength] run tellraw @a[tag=GiveMessage] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given","with":[{"translate":"effect.minecraft.strength","color": "white"},{"text":"45","color": "white"}]}]}

# Debuff messages
execute as @s[tag=Blindness] run tellraw @a[tag=GiveMessageAttack] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given","with":[{"translate":"effect.minecraft.glowing","color": "white"},{"text":"30","color": "white"}]}]}
execute as @s[tag=Blindness] run tellraw @a[tag=GiveMessageDebuffed] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given.level","with":[{"translate":"effect.minecraft.blindness","color": "white"},{"text":"30","color": "white"}]}]}
execute as @s[tag=MiningFatigue] run tellraw @a[tag=GiveMessageAttack] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.sent.level","with":[{"translate":"effect.minecraft.mining_fatigue","color": "white"},{"translate":"potion.potency.1","color": "white"},{"text":"45","color": "white"}]}]}
execute as @s[tag=MiningFatigue] run tellraw @a[tag=GiveMessageDebuffed] {"translate":"system.message","color": "green","with":[{"translate":"calamity.generator.output.effect.given.level","with":[{"translate":"effect.minecraft.mining_fatigue","color": "white"},{"translate":"potion.potency.1","color": "white"},{"text":"45","color": "white"}]}]}

# Remove message tags
tag @a[tag=GiveMessageAttack] remove GiveMessageAttack
tag @a[tag=GiveMessageDebuffed] remove GiveMessageDebuffed