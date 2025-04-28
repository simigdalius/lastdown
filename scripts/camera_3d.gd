extends Camera3D

@export
var max_shake : float

var current_shake : float

@export
var shake_fallof : float

@onready
var rand_gen = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func shake_camera():
	current_shake= max_shake

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	h_offset = rand_gen.randf_range(-current_shake, current_shake)
	v_offset = rand_gen.randf_range(-current_shake, current_shake)
	
	current_shake = lerpf(current_shake, 0, delta * shake_fallof)
	pass
