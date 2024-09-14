extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_btn_quit_pressed() -> void:
	# Exit game
	get_tree().quit()


func _on_btn_options_pressed() -> void:
	# Switch to Options menu
	get_tree().change_scene_to_file('res://menu/menu_options.tscn')


func _on_btn_play_pressed() -> void:
	get_tree().change_scene_to_file('res://menu/menu_lvl_select.tscn')
