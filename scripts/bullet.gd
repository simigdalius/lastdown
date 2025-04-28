extends Node3D
@export
var bullet_speed : float

var bullet_direction : Vector3

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.connect("timeout", queue_free)
	$Timer.set_wait_time(5)
	$Timer.start()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += bullet_direction * bullet_speed * delta
