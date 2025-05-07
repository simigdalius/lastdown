extends Resource
class_name inventoryData

#Signal inventory_interact(inventory_data: inventoryData, index: int, button: int)
@export var slot_datas: Array[slotdata]

func on_slot_clicked(index: int, button: int) -> void:
	pass
#	inventory_interact.emit(self, index, button)
