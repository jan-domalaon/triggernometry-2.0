extends Node



func _ready() -> void:
	# Spawn players in spawn points
	for sp in $SpawnPtsInit.get_children():
		sp
	
	# Add players to camera
	for p in get_tree().get_nodes_in_group("players"):
		$MultiTargetCamera.add_target(p)
	
	# Start game
	start_game()


func start_game():
	# Set game parameters based on game mode
	set_game_parameters()
	
	# Spawn players
	spawn_players()
	
	# Game countdown
	display_countdown()


func set_game_parameters():
	# Get selected from menu_game_mode
	
	# Read from JSON
	
	# Or get from custom
	pass

func spawn_players():
	pass

func display_countdown():
	pass
