extends Control

var _is_paused:bool = false:
	set = set_paused
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("esc"):
		_is_paused = !_is_paused

func set_paused(value:bool) ->void:
	_is_paused = value
	get_tree().paused = _is_paused
	visible = _is_paused

func _on_resume_pressed() -> void:
	_is_paused = false


func _on_options_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()
