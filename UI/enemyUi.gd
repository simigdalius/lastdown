extends Control

var camera : Camera3D

# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_tree().get_first_node_in_group("camera")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = camera.unproject_position(get_parent().global_position)
