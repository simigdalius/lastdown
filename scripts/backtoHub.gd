extends Area3D


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		if not $"../bossara":
			get_tree().change_scene_to_file("res://UIscenes/complition.tscn")
