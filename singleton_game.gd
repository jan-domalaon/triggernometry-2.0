extends Node

@export var player_count : int = 2

# GAME PARAMETERS
var game_params = {
	'limited_shots': true,
	'lives': 3,
	'hp_count': 3,
	'item_spawns': false
}


func update_game_params(updated_game_params : Dictionary) -> void:
	game_params = updated_game_params
	print(game_params)
