extends PanelContainer
@onready var quantitylabel: Label = $quantitylabel
@onready var texture_rect: TextureRect = $MarginContainer/TextureRect

signal slot_clicked(index: int, button: int)

func set_slot_data(slot_data: slotdata) -> void:
	var item_data = slot_data.item_data
	texture_rect.texture = item_data.texture
	tooltip_text = "%\n%s" % [item_data.name, item_data.description]
	
	if slot_data.quantity > 1:
		quantitylabel.text = "x%s" % slot_data.quantity
		quantitylabel.show()


func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton \
	and (event.button_index == MOUSE_BUTTON_LEFT \
	or event.button_index == MOUSE_BUTTON_RIGHT) \
	and event.is_pressed():
		slot_clicked.emit(get_index(), event.button_index)
