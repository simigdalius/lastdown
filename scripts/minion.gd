extends Node3D

@export
var enemy_prefab : PackedScene

@export
var root_node : Node3D

var can_spawn = true
var i=0 
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		
	if can_spawn == true and $"../../bossara":
		i=0
		for i in 4:
			var enemy = enemy_prefab.instantiate()
			var rand_angle = randf_range(0, PI * 2)
			enemy.position = global_position + (Vector3.RIGHT * sin(rand_angle) + Vector3.FORWARD * cos(rand_angle)) * 20
			root_node.add_child(enemy)
		$spawntime.start()
		can_spawn = false



func _on_timer_timeout() -> void:
	can_spawn = true
