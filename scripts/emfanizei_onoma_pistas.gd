extends Area3D

var i=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../levelname/Label3".hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node3D) -> void:
	if i==0:
		$"../levelname/Label3".show()
		$Timer.start(1.5)
		i=1


func _on_timer_timeout() -> void:
	$"../levelname/Label3".hide()
