extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../throneroom".hide()
	$".".show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		if Global.key_found:
			$"../throneroom".show()
			$".".hide()
			$".".queue_free()
			
