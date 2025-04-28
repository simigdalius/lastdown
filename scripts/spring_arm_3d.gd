extends SpringArm3D

@export
var player : Node3D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = player.position + Vector3.UP * 2
	pass
