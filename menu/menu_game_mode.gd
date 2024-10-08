extends Control

var game_mode_folder_path : String = 'res://game_modes/'
var json_file_prefix : String = 'mode_'
var game_mode_name : String = ''


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_play_button_pressed() -> void:
	# Go to selected level screen
	print('Onto game level! Game mode selected: ', game_mode_name)


func _on_select_classic_pressed() -> void:
	allow_play('classic')


func _on_select_fiesta_pressed() -> void:
	allow_play('fiesta')


func allow_play(game_mode : String) -> void:
	game_mode_name = game_mode
	
	# Set game params. Send to Game singleton
	# Read JSON for first two options
	# TODO: Get UI inputs for Custom
	var game_params_dict = read_json(game_mode)
	Game.update_game_params(game_params_dict)
	
	# Allow play button to be selected once a game mode is selected
	$center_container/VBoxContainer/MarginContainer/PlayButton.disabled = false


func get_game_mode_fp(game_mode : String) -> String:
	# Format json file path
	var json_file_path = game_mode_folder_path + json_file_prefix + game_mode + '.json'
	return json_file_path


func read_json(game_mode : String) -> Dictionary:
	var file = FileAccess.open(get_game_mode_fp(game_mode), FileAccess.READ)
	var content = file.get_as_text()
	var json = JSON.new()
	var game_mode_dict = json.parse_string(content)
	return game_mode_dict
