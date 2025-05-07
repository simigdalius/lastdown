extends Resource
class_name  slotdata

const maxStack: int = 5

@export var item_data: ItemData
@export_range(1, maxStack) var quantity: int = 1
