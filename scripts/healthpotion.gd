extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if self.name in Global.potion:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body):
	if body.is_in_group("player"):
		Global.potion.append(self.name)
		queue_free()
