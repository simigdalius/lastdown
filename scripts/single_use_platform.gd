extends StaticBody3D

var time = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_process(false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time +=1



func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		set_process(true)
		$Timer.start(0.7)

func _on_timer_timeout() -> void:
	queue_free()
