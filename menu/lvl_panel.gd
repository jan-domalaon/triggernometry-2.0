extends VBoxContainer

@export var level_name : String = 'Level Name'

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("LevelLabel").text = level_name


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
