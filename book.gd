extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if self.name in Global.book_found:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		Global.book_found.append(self.name)
		queue_free()
