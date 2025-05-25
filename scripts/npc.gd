extends CharacterBody3D

var i=0

var isRoaming = true
var isChating = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Control/Panel.hide()
	$Control/Panel2.hide()
	$Control/Panel3.hide()
	$Control/Panel4.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#arxh chat
func _on_chat_detection_area_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		$Control/Panel3.show()
		$Control/Panel.show()

#2o chat box afou paththei koumpi etc
func _on_button_pressed() -> void:
	if i==0:
		$Control/Panel.hide()
		$Control/Panel2.show()
		i+=1


func _on_button_2_pressed() -> void:
	if i==1:
		$Control/Panel2.hide()
		$Control/Panel4.show()
		i+=1


func _on_button_3_pressed() -> void:
	if i==2:
		$Control/Panel4.hide()
		$Control/Panel3.hide()
		i=0


func _on_chat_detection_area_body_exited(body: Node3D) -> void:
	$Control/Panel.hide()
	$Control/Panel2.hide()
	$Control/Panel3.hide()
	$Control/Panel4.hide()
