extends Area3D

var g=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Control/Panel4".hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.potion:
		g=1

func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player") and g==0:
		get_tree().change_scene_to_file("res://scenes/parkourmap.tscn")
	if body.is_in_group("player") and g==1:
		$"../Control/Panel4".show()


func _on_button_pressed() -> void:
	$"../Control/Panel4".hide()
