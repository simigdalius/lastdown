extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../levelname/Panel4/Label".hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		if not $"../bossara":
			get_tree().change_scene_to_file("res://UIscenes/complition.tscn")
		else:
			$"../levelname/Panel4/Label".show()
			$"../emfanizei onoma pistas/Timer".start(2)


func _on_timer_timeout() -> void:
	$"../levelname/Panel4/Label".hide()
	$"../levelname/Panel4".hide()
