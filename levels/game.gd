extends Node

@export var player_count : int = 2

func _ready() -> void:
	# Spawn players in spawn points
	for sp in $SpawnPtsInit.get_children():
		sp
	
	# Add players to camera
	for p in get_tree().get_nodes_in_group("players"):
		$MultiTargetCamera.add_target(p)
