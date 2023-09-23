scoreboard players add playercount bac_leaderboard.vars 1
execute positioned 0 0 0 in overworld at @e[tag=bac_leaderboard.ranker,tag=!bac_leaderboard.visited,sort=nearest,limit=1] unless entity @e[tag=bac_leaderboard.ranker,tag=bac_leaderboard.visited,distance=..0.0000005] run scoreboard players operation playerrank bac_leaderboard.vars = playercount bac_leaderboard.vars
execute positioned 0 0 0 in overworld as @e[tag=bac_leaderboard.ranker,tag=!bac_leaderboard.visited,sort=nearest,limit=1] at @a if score @s bac_leaderboard.UUID0 = @p bac_leaderboard.UUID0 if score @s bac_leaderboard.UUID1 = @p bac_leaderboard.UUID1 if score @s bac_leaderboard.UUID2 = @p bac_leaderboard.UUID2 if score @s bac_leaderboard.UUID3 = @p bac_leaderboard.UUID3 run scoreboard players operation @p bac_leaderboard.ranker = playerrank bac_leaderboard.vars
execute positioned 0 0 0 in overworld as @e[tag=bac_leaderboard.ranker,tag=!bac_leaderboard.visited,sort=nearest,limit=1] run tag @s add bac_leaderboard.visited
execute if entity @e[tag=bac_leaderboard.ranker,tag=!bac_leaderboard.visited] run function bac_leaderboard:rec/sort_players_rank