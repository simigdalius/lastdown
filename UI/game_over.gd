extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_retry_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/map_1_main_hub.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
