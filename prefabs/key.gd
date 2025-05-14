extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control2/Panel4.hide()
	if self.name in Global.key_found:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		Global.key_found.append(self.name)
		$Control2/Panel4.show()



func _on_area_3d_2_body_exited(body: Node3D) -> void:

	$Control2/Panel4.hide()
	queue_free()
