extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_window_mode_items()
	opbutton.item_selected.connect(on_window_mode_selected)
	$VBoxContainer/HSlider.value =db_to_linear(AudioServer.get_bus_volume_db(1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_backtomainmenu_pressed() -> void:
	get_tree().change_scene_to_file("res://UIscenes/mainMenu.tscn")

#gia optionsss
@onready var opbutton = $VBoxContainer/OptionButton as OptionButton

const WINDOW_MODE_ARRAY : Array[String] = [
	"window mode",
	"full screen",
]

func add_window_mode_items() ->void:
	for i in WINDOW_MODE_ARRAY:
		opbutton.add_item(i)
	
func on_window_mode_selected(index:int)-> void:
	match index:
		0:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
		1:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
			

func _on_h_slider_mouse_exited() -> void:
	release_focus()
	AudioServer.set_bus_volume_db(0,linear_to_db($VBoxContainer/HSlider.value))
