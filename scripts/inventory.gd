extends Control
var j=0
var n=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Panel.hide()
	$Panel2.hide()
	$Panel3.hide()

	$noitem.show()
	$noitem2.show()
	$noitem3.show()
	if Global.key_found:
		$Panel.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.book_found:
		$Panel3.show()
		$noitem3.hide()
	if Global.key_found:
		$Panel.show()
		$noitem.hide()
	if j==0:
		if Global.potion:
			$Panel2.show()
			$noitem2.hide()
	if Input.is_action_pressed("Q"):
		j=1
		$Panel2.hide()
		$noitem2.show()
