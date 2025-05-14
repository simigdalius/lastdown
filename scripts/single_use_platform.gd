extends StaticBody3D

var time = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionShape3D/OmniLight3D.hide()
	$CollisionShape3D/OmniLight3D3.hide()
	$CollisionShape3D/OmniLight3D2.hide()
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time +=1


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		set_process(true)
		$CollisionShape3D/OmniLight3D.show()
		$CollisionShape3D/OmniLight3D3.show()
		$CollisionShape3D/OmniLight3D2.show()
		$Timer.start(0.7)
		$CollisionShape3D/OmniLight3D.show()
		$CollisionShape3D/OmniLight3D3.show()
		$CollisionShape3D/OmniLight3D2.show()

func _on_timer_timeout() -> void:
	queue_free()


func _on_levelchangezone_body_entered(body: Node3D) -> void:
	pass # Replace with function body.
